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
  Response<T> toResponse<T>([T Function(List data)? mapData]) {
    var _mapData = mapData;
    if (mapData == null && T == List<Map<String, dynamic>>) {
      _mapData = (data) => data.cast<Map<String, dynamic>>() as T;
    }
    return Response<T>(
      count: count,
      data: data == null
          ? null
          : _mapData != null
              ? _mapData(data)
              : data,
      status: status,
      error: error != null ? ErrorResponse.fromJson(error!.toJson()) : null,
    );
  }
}
