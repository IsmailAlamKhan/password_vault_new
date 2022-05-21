import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/formz/formz.dart';

part 'signup_state_codegen.freezed.dart';

@freezed
class SignupState with _$SignupState, FormStateMixin {
  const SignupState._();
  const factory SignupState({
    @Default(Email.pure()) Email email,
    @Default(Username.pure()) Username username,
    @Default(Password.pure()) Password password,
    @Default(false) bool isSubmitting,
  }) = _SignupState;

  @override
  List<DefaultInput<Object?>> get inputs => [
        email,
        password,
        username,
      ];
}
