// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      username: json['username'] as String,
      avatarUrl: json['avatar_url'] as String?,
      email: json['email'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'username': instance.username,
      'avatar_url': instance.avatarUrl,
      'email': instance.email,
      'id': instance.id,
    };
