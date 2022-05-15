import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'models_codegen.freezed.dart';
part 'models_codegen.g.dart';

@freezed
class Response<T> with _$Response<T> {
  const factory Response({
    T? data,
    int? status,
    ErrorResponse? error,
    int? count,
  }) = _Response;
}

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    required String message,
    String? code,
    dynamic details,
    String? hint,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);
}

extension PostgrestResponseX on PostgrestResponse {
  Response<T> toResponse<T>([T Function(dynamic data)? mapData]) {
    return Response<T>(
      count: count,
      data: data == null
          ? null
          : mapData != null
              ? mapData(data)
              : data,
      status: status,
      error: error != null ? ErrorResponse.fromJson(error!.toJson()) : null,
    );
  }
}
