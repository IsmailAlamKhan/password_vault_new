import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/login/view/login_view.dart';
import '../event_bus.dart';
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
  CurrentUserController(Ref ref)
      : _authService = ref.read(authServiceProvider),
        eventBus = ref.read(eventBusProvider),
        super(const AppUserState.unAuthenticated());

  void login(AppUser user) {
    state = AppUserState.authenticated(user);
  }

  Future<void> logOut([bool willClearUser = true]) async {
    try {
      await _authService.logout();
      if (willClearUser) {
        clearUser();
        push(LoginView.path, true);
      }

      logInfo('User logged out');
    } on Exception catch (e, s) {
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
    } on Exception catch (e, s) {
      logError('Error deleting user', error: e, stackTrace: s);
      rethrow;
    }
  }
}
