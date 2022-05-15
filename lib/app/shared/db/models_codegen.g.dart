// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models_codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorResponse _$$_ErrorResponseFromJson(Map<String, dynamic> json) =>
    _$_ErrorResponse(
      message: json['message'] as String,
      code: json['code'] as String?,
      details: json['details'],
      hint: json['hint'] as String?,
    );

Map<String, dynamic> _$$_ErrorResponseToJson(_$_ErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'details': instance.details,
      'hint': instance.hint,
    };
