import 'package:freezed_annotation/freezed_annotation.dart';

import '../../features/password_form/password_form_state_codegen.dart';

part 'password_codegen.freezed.dart';
part 'password_codegen.g.dart';

@freezed
class PasswordData with _$PasswordData {
  const PasswordData._();
  const factory PasswordData({
    required int id,
    required String password,
    String? username,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required PasswordProvider provider,
    @JsonKey(name: 'user_id') required String userId,
  }) = _PasswordData;

  PasswordFormState toFormState() => PasswordFormState.fromPasswordData(this);

  factory PasswordData.fromJson(Map<String, dynamic> json) => _$PasswordDataFromJson(json);
}

@freezed
class PasswordProvider with _$PasswordProvider {
  const factory PasswordProvider({
    required int id,
    required String color,
    @JsonKey(name: 'host_url') required String hostUrl,
    @JsonKey(name: 'image_path') required String imagePath,
    required String name,
  }) = _PasswordProvider;

  factory PasswordProvider.fromJson(Map<String, dynamic> json) => _$PasswordProviderFromJson(json);
}
