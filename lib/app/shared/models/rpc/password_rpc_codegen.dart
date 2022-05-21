import 'package:freezed_annotation/freezed_annotation.dart';

import 'supabase_rpc.dart';

part 'password_rpc_codegen.freezed.dart';
part 'password_rpc_codegen.g.dart';

@freezed
class GetPasswordDataRpcBuilder with _$GetPasswordDataRpcBuilder, SupabaseRpcBuilder {
  const GetPasswordDataRpcBuilder._();
  const factory GetPasswordDataRpcBuilder({
    @JsonKey(name: 'uid_input') required String uid,
  }) = _GetPasswordDataRpcBuilder;
  factory GetPasswordDataRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$GetPasswordDataRpcBuilderFromJson(json);

  @override
  String get name => 'sp_get_password_data';
}

@freezed
class GetPasswordProviderRpcBuilder with _$GetPasswordProviderRpcBuilder, SupabaseRpcBuilder {
  const GetPasswordProviderRpcBuilder._();

  const factory GetPasswordProviderRpcBuilder({
    @JsonKey(name: 'id_input') required int id,
  }) = _GetPasswordProviderRpcBuilder;

  factory GetPasswordProviderRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$GetPasswordProviderRpcBuilderFromJson(json);

  @override
  String get name => 'sp_get_password_provider';
}
