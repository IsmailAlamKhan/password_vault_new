import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/formz/formz.dart';
import 'login_state_codegen.dart';

final loginControllerProvider =
    StateNotifierProvider<LoginController, LoginState>(LoginController.new);

class LoginController extends StateNotifier<LoginState> {
  LoginController(Ref ref) : super(const LoginState());

  void changeUsername(Username value) {
    state = state.copyWith(username: value);
  }

  void changePassword(Password value) {
    state = state.copyWith(password: value);
  }
}
