import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/formz/formz.dart';

part 'login_state_codegen.freezed.dart';

@freezed
class LoginState with _$LoginState, FormStateMixin {
  const LoginState._();
  const factory LoginState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(false) bool isSubmitting,
  }) = _LoginState;

  @override
  List<DefaultInput<Object?>> get inputs => [
        email,
        password,
      ];
}
