import 'package:freezed_annotation/freezed_annotation.dart';

import 'supabase_rpc.dart';

part 'get_profile_rpc_codegen.freezed.dart';
part 'get_profile_rpc_codegen.g.dart';

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
