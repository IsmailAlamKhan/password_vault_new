import 'package:freezed_annotation/freezed_annotation.dart';

import 'supabase_rpc.dart';

part 'delete_user_rpc_codegen.freezed.dart';
part 'delete_user_rpc_codegen.g.dart';

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
