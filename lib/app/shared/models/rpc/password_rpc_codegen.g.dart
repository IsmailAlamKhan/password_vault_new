// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_rpc_codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPasswordDataRpcBuilderById _$$_GetPasswordDataRpcBuilderByIdFromJson(
        Map<String, dynamic> json) =>
    _$_GetPasswordDataRpcBuilderById(
      id: json['id_input'] as int?,
      uid: json['uid_input'] as String?,
    );

Map<String, dynamic> _$$_GetPasswordDataRpcBuilderByIdToJson(
        _$_GetPasswordDataRpcBuilderById instance) =>
    <String, dynamic>{
      'id_input': instance.id,
      'uid_input': instance.uid,
    };

_$_GetPasswordProviderRpcBuilder _$$_GetPasswordProviderRpcBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_GetPasswordProviderRpcBuilder(
      id: json['id_input'] as int,
    );

Map<String, dynamic> _$$_GetPasswordProviderRpcBuilderToJson(
        _$_GetPasswordProviderRpcBuilder instance) =>
    <String, dynamic>{
      'id_input': instance.id,
    };

_$_DeletePasswordRpcBuilder _$$_DeletePasswordRpcBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_DeletePasswordRpcBuilder(
      id: json['id_input'] as int,
    );

Map<String, dynamic> _$$_DeletePasswordRpcBuilderToJson(
        _$_DeletePasswordRpcBuilder instance) =>
    <String, dynamic>{
      'id_input': instance.id,
    };
