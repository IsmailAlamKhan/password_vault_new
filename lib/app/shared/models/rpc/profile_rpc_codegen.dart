import 'package:freezed_annotation/freezed_annotation.dart';

import 'supabase_rpc.dart';

part 'profile_rpc_codegen.freezed.dart';
part 'profile_rpc_codegen.g.dart';

@freezed
class GetProfilesRpcBuilder with _$GetProfilesRpcBuilder implements SupabaseRpcBuilder {
  const GetProfilesRpcBuilder._();
  @override
  String get name => 'sp_get_profiles';

  const factory GetProfilesRpcBuilder({
    @JsonKey(name: 'uid_input') String? uid,
  }) = _GetProfilesRpcBuilder;

  factory GetProfilesRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$GetProfilesRpcBuilderFromJson(json);
}

@freezed
class AddUpdateProfileRpcBuilder with _$AddUpdateProfileRpcBuilder implements SupabaseRpcBuilder {
  const AddUpdateProfileRpcBuilder._();
  @override
  String get name => 'sp_add_update_profiles';

  const factory AddUpdateProfileRpcBuilder({
    @JsonKey(name: 'uid_input') required String uid,
    @JsonKey(name: 'username_input') String? username,
    @JsonKey(name: 'avatar_url_input') String? avatarUrl,
  }) = _AddUpdateProfileRpcBuilder;

  factory AddUpdateProfileRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$AddUpdateProfileRpcBuilderFromJson(json);
}

@freezed
class DeleteUserRpcBuilder with _$DeleteUserRpcBuilder implements SupabaseRpcBuilder {
  const DeleteUserRpcBuilder._();
  @override
  String get name => 'sp_delete_user';
  const factory DeleteUserRpcBuilder({
    @JsonKey(name: 'uid_input') required String uid,
  }) = _DeleteUserRpcBuilder;
  factory DeleteUserRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserRpcBuilderFromJson(json);
}
