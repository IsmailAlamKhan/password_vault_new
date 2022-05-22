import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/login/login.dart';
import '../event_bus.dart';
import '../events/events.dart';
import '../exceptions.dart';
import '../logger.dart';
import '../models/user_codegen.dart';
import '../navigator.dart';
import '../services/auth.dart';

final currentUserControllerProvider =
    StateNotifierProvider<CurrentUserController, AppUserState>(CurrentUserController.new);

final currentUserProvider = Provider<AppUser?>(
  (ref) => ref.watch(currentUserControllerProvider).whenOrNull(
        authenticated: (user) => user,
      ),
);

class CurrentUserController extends StateNotifier<AppUserState> with NavigatorController {
  @override
  final EventBus eventBus;
  final AuthService _authService;

  late final StreamSubscription<Event> _subscription;
  CurrentUserController(Ref ref)
      : _authService = ref.read(authServiceProvider),
        eventBus = ref.read(eventBusProvider),
        super(const AppUserState.unAuthenticated()) {
    _subscription = eventBus.onAll(
      (event) {
        if (event is LoggedInEvent) {
          login(event.user);
        } else if (event is LogoutEvent) {
          logOut();
        }
      },
      [LoggedInEvent, LogoutEvent],
    );
  }

  void login(AppUser user) {
    state = AppUserState.authenticated(user);
  }

  Future<void> logOut([bool willClearUser = true]) async {
    try {
      await _authService.logout();
      if (willClearUser) {
        clearUser();
        go(LoginView.path);
      }

      logInfo('User logged out');
    } on AppException catch (e, s) {
      logError('Error logging out', error: e, stackTrace: s);
      showSnackbar('Error logging out');
    }
  }

  void clearUser() {
    state = const AppUserState.unAuthenticated();
    logInfo('User cleared');
  }

  Future<void> getInitialUser() => _authService.getInitialUser().then((user) {
        if (user != null) {
          login(user);
        }
      });

  Future<void> delete() async {
    final user = state.whenOrNull(authenticated: (user) => user);
    assert(user != null, 'User must be authenticated to delete');
    try {
      await logOut(false);
      await _authService.deleteAccount(user!.id);
      clearUser();
      logInfo('User deleted');
    } on AppException catch (e, s) {
      logError('Error deleting user', error: e, stackTrace: s);
      rethrow;
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
