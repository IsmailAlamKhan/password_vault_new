import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_codegen.freezed.dart';
part 'user_codegen.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String username,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    required String email,
    required String id,
  }) = _AppUser;
  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);
}

@freezed
class AppUserState with _$AppUserState {
  const factory AppUserState.unAuthenticated() = _UnAuthenticated;
  const factory AppUserState.authenticated(AppUser user) = _Authenticated;
}
