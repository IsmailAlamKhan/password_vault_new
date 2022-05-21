import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_codegen.freezed.dart';
part 'password_codegen.g.dart';

@freezed
class PasswordData with _$PasswordData {
  const factory PasswordData({
    required int id,
    required String password,
    String? username,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required PasswordProvider provider,
  }) = _PasswordData;

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
