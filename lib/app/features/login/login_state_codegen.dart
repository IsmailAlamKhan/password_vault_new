import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/formz/formz.dart';

part 'login_state_codegen.freezed.dart';

@freezed
class LoginState with _$LoginState, FormStateMixin {
  const LoginState._();
  const factory LoginState({
    @Default(Username.pure()) Username username,
    @Default(Password.pure()) Password password,
  }) = _LoginState;

  @override
  List<DefaultInput<Object?>> get inputs => throw UnimplementedError();
}
