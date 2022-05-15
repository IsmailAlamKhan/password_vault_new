import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/event_bus.dart';
import '../../shared/events/events.dart';
import '../../shared/exceptions.dart';
import '../../shared/formz/formz.dart';
import '../../shared/logger.dart';
import '../../shared/navigator.dart';
import '../../shared/services/auth.dart';
import 'signup_state_codegen.dart';

final signupControllerProvider =
    StateNotifierProvider<SignUpController, SignupState>(SignUpController.new);

class SignUpController extends StateNotifier<SignupState> with NavigatorController {
  @override
  final EventBus eventBus;
  final AuthService authService;
  SignUpController(Ref ref)
      : authService = ref.read(authServiceProvider),
        eventBus = ref.read(eventBusProvider),
        super(const SignupState());

  void changeEmail(Email value) {
    state = state.copyWith(email: value);
  }

  void changeUsername(Username value) {
    state = state.copyWith(username: value);
  }

  void changePassword(Password value) {
    state = state.copyWith(password: value);
  }

  Future<void> submit() async {
    if (state.isValid) {
      state = state.copyWith(isSubmitting: true);
      try {
        final user = await authService.signUp(
          email: state.email.value,
          password: state.password.value,
          username: state.username.value,
        );
        eventBus.emit(LoggedInEvent(user));
      } on AppException catch (e, s) {
        logError("Signup error", error: e, stackTrace: s);
        showSnackbar(e.toString());
      } finally {
        state = state.copyWith(isSubmitting: false);
      }
    } else {
      showSnackbar("Please fill in all fields");
    }
  }
}
