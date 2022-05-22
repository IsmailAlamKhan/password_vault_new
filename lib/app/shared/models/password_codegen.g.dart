// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PasswordData _$$_PasswordDataFromJson(Map<String, dynamic> json) =>
    _$_PasswordData(
      id: json['id'] as int,
      password: json['password'] as String,
      username: json['username'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      provider:
          PasswordProvider.fromJson(json['provider'] as Map<String, dynamic>),
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$$_PasswordDataToJson(_$_PasswordData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'username': instance.username,
      'created_at': instance.createdAt.toIso8601String(),
      'provider': instance.provider,
      'user_id': instance.userId,
    };

_$_PasswordProvider _$$_PasswordProviderFromJson(Map<String, dynamic> json) =>
    _$_PasswordProvider(
      id: json['id'] as int,
      color: json['color'] as String,
      hostUrl: json['host_url'] as String,
      imagePath: json['image_path'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_PasswordProviderToJson(_$_PasswordProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'color': instance.color,
      'host_url': instance.hostUrl,
      'image_path': instance.imagePath,
      'name': instance.name,
    };
