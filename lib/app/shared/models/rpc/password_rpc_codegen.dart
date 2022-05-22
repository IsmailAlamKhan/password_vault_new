import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/password_form/password_form_state_codegen.dart';
import 'supabase_rpc.dart';

part 'password_rpc_codegen.freezed.dart';
part 'password_rpc_codegen.g.dart';

@freezed
class GetPasswordDataRpcBuilder with _$GetPasswordDataRpcBuilder, SupabaseRpcBuilder {
  const GetPasswordDataRpcBuilder._();
  const factory GetPasswordDataRpcBuilder({
    @JsonKey(name: 'id_input') int? id,
    @JsonKey(name: 'uid_input') String? uid,
  }) = _GetPasswordDataRpcBuilderById;

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

@freezed
class AddUpdatePasswordRpcBuilder with _$AddUpdatePasswordRpcBuilder, SupabaseRpcBuilder {
  const AddUpdatePasswordRpcBuilder._();

  factory AddUpdatePasswordRpcBuilder({required PasswordFormState state}) =
      _AddUpdatePasswordRpcBuilder;

  @override
  Map<String, dynamic> toJson() => state.toJson();

  @override
  String get name => 'sp_add_update_password_data';
}

@freezed
class DeletePasswordRpcBuilder with _$DeletePasswordRpcBuilder, SupabaseRpcBuilder {
  const DeletePasswordRpcBuilder._();

  factory DeletePasswordRpcBuilder({@JsonKey(name: 'id_input') required int id}) =
      _DeletePasswordRpcBuilder;

  factory DeletePasswordRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$DeletePasswordRpcBuilderFromJson(json);

  @override
  String get name => 'sp_delete_password_data';
}
