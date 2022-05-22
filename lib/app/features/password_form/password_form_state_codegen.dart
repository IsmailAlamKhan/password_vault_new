import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/formz/formz.dart';
import '../../shared/models/password_codegen.dart';

part 'password_form_state_codegen.freezed.dart';

enum SubmitState {
  idle,
  submitting,
  submitted,
  failed,
}

@freezed
class PasswordFormState with _$PasswordFormState, FormStateMixin {
  const PasswordFormState._();
  const factory PasswordFormState({
    int? id,
    @Default(Password.pure()) Password password,
    @Default(Username.pureNonRequired()) Username username,
    PasswordProvider? provider,
    required String userId,
    @Default(false) bool haveChanged,
    @Default(SubmitState.idle) SubmitState submitState,
  }) = _PasswordFormState;

  static PasswordFormState fromPasswordData(PasswordData data) {
    return PasswordFormState(
      id: data.id,
      password: Password.dirty(data.password),
      username: data.username != null
          ? Username.dirtyNonRequired(data.username!)
          : const Username.pureNonRequired(),
      provider: data.provider,
      userId: data.userId,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_input': id ?? 0,
      'password_input': password.value,
      'username_input': username.value,
      'provider_id_input': provider?.id,
      'user_id_input': userId,
    };
  }

  @override
  List<DefaultInput<Object?>> get inputs => [password, username];
}
