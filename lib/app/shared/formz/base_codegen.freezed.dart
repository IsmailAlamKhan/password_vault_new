// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputError {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalid,
    required TResult Function(String message) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalid,
    TResult Function(String message)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalid,
    TResult Function(String message)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputErrorInvalid value) invalid,
    required TResult Function(_InputErrorEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InputErrorInvalid value)? invalid,
    TResult Function(_InputErrorEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputErrorInvalid value)? invalid,
    TResult Function(_InputErrorEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputErrorCopyWith<InputError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputErrorCopyWith<$Res> {
  factory $InputErrorCopyWith(
          InputError value, $Res Function(InputError) then) =
      _$InputErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$InputErrorCopyWithImpl<$Res> implements $InputErrorCopyWith<$Res> {
  _$InputErrorCopyWithImpl(this._value, this._then);

  final InputError _value;
  // ignore: unused_field
  final $Res Function(InputError) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InputErrorInvalidCopyWith<$Res>
    implements $InputErrorCopyWith<$Res> {
  factory _$$_InputErrorInvalidCopyWith(_$_InputErrorInvalid value,
          $Res Function(_$_InputErrorInvalid) then) =
      __$$_InputErrorInvalidCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_InputErrorInvalidCopyWithImpl<$Res>
    extends _$InputErrorCopyWithImpl<$Res>
    implements _$$_InputErrorInvalidCopyWith<$Res> {
  __$$_InputErrorInvalidCopyWithImpl(
      _$_InputErrorInvalid _value, $Res Function(_$_InputErrorInvalid) _then)
      : super(_value, (v) => _then(v as _$_InputErrorInvalid));

  @override
  _$_InputErrorInvalid get _value => super._value as _$_InputErrorInvalid;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_InputErrorInvalid(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputErrorInvalid
    with DiagnosticableTreeMixin
    implements _InputErrorInvalid {
  const _$_InputErrorInvalid(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputError.invalid(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InputError.invalid'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputErrorInvalid &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_InputErrorInvalidCopyWith<_$_InputErrorInvalid> get copyWith =>
      __$$_InputErrorInvalidCopyWithImpl<_$_InputErrorInvalid>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalid,
    required TResult Function(String message) empty,
  }) {
    return invalid(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalid,
    TResult Function(String message)? empty,
  }) {
    return invalid?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalid,
    TResult Function(String message)? empty,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputErrorInvalid value) invalid,
    required TResult Function(_InputErrorEmpty value) empty,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InputErrorInvalid value)? invalid,
    TResult Function(_InputErrorEmpty value)? empty,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputErrorInvalid value)? invalid,
    TResult Function(_InputErrorEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _InputErrorInvalid implements InputError {
  const factory _InputErrorInvalid(final String message) = _$_InputErrorInvalid;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InputErrorInvalidCopyWith<_$_InputErrorInvalid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputErrorEmptyCopyWith<$Res>
    implements $InputErrorCopyWith<$Res> {
  factory _$$_InputErrorEmptyCopyWith(
          _$_InputErrorEmpty value, $Res Function(_$_InputErrorEmpty) then) =
      __$$_InputErrorEmptyCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_InputErrorEmptyCopyWithImpl<$Res>
    extends _$InputErrorCopyWithImpl<$Res>
    implements _$$_InputErrorEmptyCopyWith<$Res> {
  __$$_InputErrorEmptyCopyWithImpl(
      _$_InputErrorEmpty _value, $Res Function(_$_InputErrorEmpty) _then)
      : super(_value, (v) => _then(v as _$_InputErrorEmpty));

  @override
  _$_InputErrorEmpty get _value => super._value as _$_InputErrorEmpty;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_InputErrorEmpty(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputErrorEmpty
    with DiagnosticableTreeMixin
    implements _InputErrorEmpty {
  const _$_InputErrorEmpty(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputError.empty(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InputError.empty'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputErrorEmpty &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_InputErrorEmptyCopyWith<_$_InputErrorEmpty> get copyWith =>
      __$$_InputErrorEmptyCopyWithImpl<_$_InputErrorEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalid,
    required TResult Function(String message) empty,
  }) {
    return empty(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalid,
    TResult Function(String message)? empty,
  }) {
    return empty?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalid,
    TResult Function(String message)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputErrorInvalid value) invalid,
    required TResult Function(_InputErrorEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InputErrorInvalid value)? invalid,
    TResult Function(_InputErrorEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputErrorInvalid value)? invalid,
    TResult Function(_InputErrorEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _InputErrorEmpty implements InputError {
  const factory _InputErrorEmpty(final String message) = _$_InputErrorEmpty;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InputErrorEmptyCopyWith<_$_InputErrorEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}
