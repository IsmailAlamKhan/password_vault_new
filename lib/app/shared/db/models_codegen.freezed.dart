// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models_codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Response<T> {
  T? get data => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  ErrorResponse? get error => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseCopyWith<T, Response<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<T, $Res> {
  factory $ResponseCopyWith(
          Response<T> value, $Res Function(Response<T>) then) =
      _$ResponseCopyWithImpl<T, $Res>;
  $Res call({T? data, int? status, ErrorResponse? error, int? count});

  $ErrorResponseCopyWith<$Res>? get error;
}

/// @nodoc
class _$ResponseCopyWithImpl<T, $Res> implements $ResponseCopyWith<T, $Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response<T> _value;
  // ignore: unused_field
  final $Res Function(Response<T>) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? status = freezed,
    Object? error = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $ErrorResponseCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorResponseCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$$_ResponseCopyWith<T, $Res>
    implements $ResponseCopyWith<T, $Res> {
  factory _$$_ResponseCopyWith(
          _$_Response<T> value, $Res Function(_$_Response<T>) then) =
      __$$_ResponseCopyWithImpl<T, $Res>;
  @override
  $Res call({T? data, int? status, ErrorResponse? error, int? count});

  @override
  $ErrorResponseCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_ResponseCopyWithImpl<T, $Res> extends _$ResponseCopyWithImpl<T, $Res>
    implements _$$_ResponseCopyWith<T, $Res> {
  __$$_ResponseCopyWithImpl(
      _$_Response<T> _value, $Res Function(_$_Response<T>) _then)
      : super(_value, (v) => _then(v as _$_Response<T>));

  @override
  _$_Response<T> get _value => super._value as _$_Response<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? status = freezed,
    Object? error = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_Response<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Response<T> implements _Response<T> {
  const _$_Response({this.data, this.status, this.error, this.count});

  @override
  final T? data;
  @override
  final int? status;
  @override
  final ErrorResponse? error;
  @override
  final int? count;

  @override
  String toString() {
    return 'Response<$T>(data: $data, status: $status, error: $error, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Response<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseCopyWith<T, _$_Response<T>> get copyWith =>
      __$$_ResponseCopyWithImpl<T, _$_Response<T>>(this, _$identity);
}

abstract class _Response<T> implements Response<T> {
  const factory _Response(
      {final T? data,
      final int? status,
      final ErrorResponse? error,
      final int? count}) = _$_Response<T>;

  @override
  T? get data => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  ErrorResponse? get error => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCopyWith<T, _$_Response<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponse {
  String get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  dynamic get details => throw _privateConstructorUsedError;
  String? get hint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) then) =
      _$ErrorResponseCopyWithImpl<$Res>;
  $Res call({String message, String? code, dynamic details, String? hint});
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(this._value, this._then);

  final ErrorResponse _value;
  // ignore: unused_field
  final $Res Function(ErrorResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? details = freezed,
    Object? hint = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorResponseCopyWith<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  factory _$$_ErrorResponseCopyWith(
          _$_ErrorResponse value, $Res Function(_$_ErrorResponse) then) =
      __$$_ErrorResponseCopyWithImpl<$Res>;
  @override
  $Res call({String message, String? code, dynamic details, String? hint});
}

/// @nodoc
class __$$_ErrorResponseCopyWithImpl<$Res>
    extends _$ErrorResponseCopyWithImpl<$Res>
    implements _$$_ErrorResponseCopyWith<$Res> {
  __$$_ErrorResponseCopyWithImpl(
      _$_ErrorResponse _value, $Res Function(_$_ErrorResponse) _then)
      : super(_value, (v) => _then(v as _$_ErrorResponse));

  @override
  _$_ErrorResponse get _value => super._value as _$_ErrorResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? details = freezed,
    Object? hint = freezed,
  }) {
    return _then(_$_ErrorResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorResponse implements _ErrorResponse {
  const _$_ErrorResponse(
      {required this.message, this.code, this.details, this.hint});

  factory _$_ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorResponseFromJson(json);

  @override
  final String message;
  @override
  final String? code;
  @override
  final dynamic details;
  @override
  final String? hint;

  @override
  String toString() {
    return 'ErrorResponse(message: $message, code: $code, details: $details, hint: $hint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorResponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.hint, hint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(hint));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorResponseCopyWith<_$_ErrorResponse> get copyWith =>
      __$$_ErrorResponseCopyWithImpl<_$_ErrorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorResponseToJson(this);
  }
}

abstract class _ErrorResponse implements ErrorResponse {
  const factory _ErrorResponse(
      {required final String message,
      final String? code,
      final dynamic details,
      final String? hint}) = _$_ErrorResponse;

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponse.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  dynamic get details => throw _privateConstructorUsedError;
  @override
  String? get hint => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorResponseCopyWith<_$_ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
