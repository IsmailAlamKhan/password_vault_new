import 'package:freezed_annotation/freezed_annotation.dart';

import 'supabase_rpc.dart';

part 'add_update_profile_rpc_codegen.freezed.dart';
part 'add_update_profile_rpc_codegen.g.dart';

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
