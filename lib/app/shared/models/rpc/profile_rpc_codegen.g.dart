// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_rpc_codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetProfilesRpcBuilder _$$_GetProfilesRpcBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_GetProfilesRpcBuilder(
      uid: json['uid_input'] as String?,
    );

Map<String, dynamic> _$$_GetProfilesRpcBuilderToJson(
        _$_GetProfilesRpcBuilder instance) =>
    <String, dynamic>{
      'uid_input': instance.uid,
    };

_$_AddUpdateProfileRpcBuilder _$$_AddUpdateProfileRpcBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_AddUpdateProfileRpcBuilder(
      uid: json['uid_input'] as String,
      username: json['username_input'] as String?,
      avatarUrl: json['avatar_url_input'] as String?,
    );

Map<String, dynamic> _$$_AddUpdateProfileRpcBuilderToJson(
        _$_AddUpdateProfileRpcBuilder instance) =>
    <String, dynamic>{
      'uid_input': instance.uid,
      'username_input': instance.username,
      'avatar_url_input': instance.avatarUrl,
    };

_$_DeleteUserRpcBuilder _$$_DeleteUserRpcBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteUserRpcBuilder(
      uid: json['uid_input'] as String,
    );

Map<String, dynamic> _$$_DeleteUserRpcBuilderToJson(
        _$_DeleteUserRpcBuilder instance) =>
    <String, dynamic>{
      'uid_input': instance.uid,
    };
