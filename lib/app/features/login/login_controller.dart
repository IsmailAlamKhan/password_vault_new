import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/event_bus.dart';
import '../../shared/events/events.dart';
import '../../shared/exceptions.dart';
import '../../shared/formz/formz.dart';
import '../../shared/logger.dart';
import '../../shared/navigator.dart';
import '../../shared/services/auth.dart';
import '../home/view/home_view.dart';
import 'login_state_codegen.dart';

final loginControllerProvider =
    StateNotifierProvider<LoginController, LoginState>(LoginController.new);

class LoginController extends StateNotifier<LoginState> with NavigatorController {
  @override
  final EventBus eventBus;
  final AuthService authService;
  LoginController(Ref ref)
      : authService = ref.read(authServiceProvider),
        eventBus = ref.read(eventBusProvider),
        super(const LoginState());

  void changeEmail(Email value) {
    state = state.copyWith(email: value);
  }

  void changePassword(Password value) {
    state = state.copyWith(password: value);
  }

  Future<void> submit() async {
    if (state.isValid) {
      state = state.copyWith(isSubmitting: true);
      try {
        final user = await authService.login(
          email: state.email.value,
          password: state.password.value,
        );
        eventBus.emit(LoggedInEvent(user));
        go(HomeView.path);
      } on AppException catch (e, s) {
        logError("Login error", error: e, stackTrace: s);
        showSnackbar(e.toString());
      } finally {
        state = state.copyWith(isSubmitting: false);
      }
    } else {
      showSnackbar("Please fill in all fields");
    }
  }
}
