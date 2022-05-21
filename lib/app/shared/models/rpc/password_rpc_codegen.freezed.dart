// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_rpc_codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPasswordDataRpcBuilder _$GetPasswordDataRpcBuilderFromJson(
    Map<String, dynamic> json) {
  return _GetPasswordDataRpcBuilder.fromJson(json);
}

/// @nodoc
mixin _$GetPasswordDataRpcBuilder {
  @JsonKey(name: 'uid_input')
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPasswordDataRpcBuilderCopyWith<GetPasswordDataRpcBuilder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPasswordDataRpcBuilderCopyWith<$Res> {
  factory $GetPasswordDataRpcBuilderCopyWith(GetPasswordDataRpcBuilder value,
          $Res Function(GetPasswordDataRpcBuilder) then) =
      _$GetPasswordDataRpcBuilderCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'uid_input') String uid});
}

/// @nodoc
class _$GetPasswordDataRpcBuilderCopyWithImpl<$Res>
    implements $GetPasswordDataRpcBuilderCopyWith<$Res> {
  _$GetPasswordDataRpcBuilderCopyWithImpl(this._value, this._then);

  final GetPasswordDataRpcBuilder _value;
  // ignore: unused_field
  final $Res Function(GetPasswordDataRpcBuilder) _then;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetPasswordDataRpcBuilderCopyWith<$Res>
    implements $GetPasswordDataRpcBuilderCopyWith<$Res> {
  factory _$$_GetPasswordDataRpcBuilderCopyWith(
          _$_GetPasswordDataRpcBuilder value,
          $Res Function(_$_GetPasswordDataRpcBuilder) then) =
      __$$_GetPasswordDataRpcBuilderCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'uid_input') String uid});
}

/// @nodoc
class __$$_GetPasswordDataRpcBuilderCopyWithImpl<$Res>
    extends _$GetPasswordDataRpcBuilderCopyWithImpl<$Res>
    implements _$$_GetPasswordDataRpcBuilderCopyWith<$Res> {
  __$$_GetPasswordDataRpcBuilderCopyWithImpl(
      _$_GetPasswordDataRpcBuilder _value,
      $Res Function(_$_GetPasswordDataRpcBuilder) _then)
      : super(_value, (v) => _then(v as _$_GetPasswordDataRpcBuilder));

  @override
  _$_GetPasswordDataRpcBuilder get _value =>
      super._value as _$_GetPasswordDataRpcBuilder;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_GetPasswordDataRpcBuilder(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPasswordDataRpcBuilder extends _GetPasswordDataRpcBuilder {
  const _$_GetPasswordDataRpcBuilder(
      {@JsonKey(name: 'uid_input') required this.uid})
      : super._();

  factory _$_GetPasswordDataRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_GetPasswordDataRpcBuilderFromJson(json);

  @override
  @JsonKey(name: 'uid_input')
  final String uid;

  @override
  String toString() {
    return 'GetPasswordDataRpcBuilder(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPasswordDataRpcBuilder &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_GetPasswordDataRpcBuilderCopyWith<_$_GetPasswordDataRpcBuilder>
      get copyWith => __$$_GetPasswordDataRpcBuilderCopyWithImpl<
          _$_GetPasswordDataRpcBuilder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPasswordDataRpcBuilderToJson(this);
  }
}

abstract class _GetPasswordDataRpcBuilder extends GetPasswordDataRpcBuilder {
  const factory _GetPasswordDataRpcBuilder(
          {@JsonKey(name: 'uid_input') required final String uid}) =
      _$_GetPasswordDataRpcBuilder;
  const _GetPasswordDataRpcBuilder._() : super._();

  factory _GetPasswordDataRpcBuilder.fromJson(Map<String, dynamic> json) =
      _$_GetPasswordDataRpcBuilder.fromJson;

  @override
  @JsonKey(name: 'uid_input')
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetPasswordDataRpcBuilderCopyWith<_$_GetPasswordDataRpcBuilder>
      get copyWith => throw _privateConstructorUsedError;
}

GetPasswordProviderRpcBuilder _$GetPasswordProviderRpcBuilderFromJson(
    Map<String, dynamic> json) {
  return _GetPasswordProviderRpcBuilder.fromJson(json);
}

/// @nodoc
mixin _$GetPasswordProviderRpcBuilder {
  @JsonKey(name: 'id_input')
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPasswordProviderRpcBuilderCopyWith<GetPasswordProviderRpcBuilder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPasswordProviderRpcBuilderCopyWith<$Res> {
  factory $GetPasswordProviderRpcBuilderCopyWith(
          GetPasswordProviderRpcBuilder value,
          $Res Function(GetPasswordProviderRpcBuilder) then) =
      _$GetPasswordProviderRpcBuilderCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id_input') int id});
}

/// @nodoc
class _$GetPasswordProviderRpcBuilderCopyWithImpl<$Res>
    implements $GetPasswordProviderRpcBuilderCopyWith<$Res> {
  _$GetPasswordProviderRpcBuilderCopyWithImpl(this._value, this._then);

  final GetPasswordProviderRpcBuilder _value;
  // ignore: unused_field
  final $Res Function(GetPasswordProviderRpcBuilder) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_GetPasswordProviderRpcBuilderCopyWith<$Res>
    implements $GetPasswordProviderRpcBuilderCopyWith<$Res> {
  factory _$$_GetPasswordProviderRpcBuilderCopyWith(
          _$_GetPasswordProviderRpcBuilder value,
          $Res Function(_$_GetPasswordProviderRpcBuilder) then) =
      __$$_GetPasswordProviderRpcBuilderCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id_input') int id});
}

/// @nodoc
class __$$_GetPasswordProviderRpcBuilderCopyWithImpl<$Res>
    extends _$GetPasswordProviderRpcBuilderCopyWithImpl<$Res>
    implements _$$_GetPasswordProviderRpcBuilderCopyWith<$Res> {
  __$$_GetPasswordProviderRpcBuilderCopyWithImpl(
      _$_GetPasswordProviderRpcBuilder _value,
      $Res Function(_$_GetPasswordProviderRpcBuilder) _then)
      : super(_value, (v) => _then(v as _$_GetPasswordProviderRpcBuilder));

  @override
  _$_GetPasswordProviderRpcBuilder get _value =>
      super._value as _$_GetPasswordProviderRpcBuilder;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_GetPasswordProviderRpcBuilder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPasswordProviderRpcBuilder extends _GetPasswordProviderRpcBuilder {
  const _$_GetPasswordProviderRpcBuilder(
      {@JsonKey(name: 'id_input') required this.id})
      : super._();

  factory _$_GetPasswordProviderRpcBuilder.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetPasswordProviderRpcBuilderFromJson(json);

  @override
  @JsonKey(name: 'id_input')
  final int id;

  @override
  String toString() {
    return 'GetPasswordProviderRpcBuilder(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPasswordProviderRpcBuilder &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_GetPasswordProviderRpcBuilderCopyWith<_$_GetPasswordProviderRpcBuilder>
      get copyWith => __$$_GetPasswordProviderRpcBuilderCopyWithImpl<
          _$_GetPasswordProviderRpcBuilder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPasswordProviderRpcBuilderToJson(this);
  }
}

abstract class _GetPasswordProviderRpcBuilder
    extends GetPasswordProviderRpcBuilder {
  const factory _GetPasswordProviderRpcBuilder(
          {@JsonKey(name: 'id_input') required final int id}) =
      _$_GetPasswordProviderRpcBuilder;
  const _GetPasswordProviderRpcBuilder._() : super._();

  factory _GetPasswordProviderRpcBuilder.fromJson(Map<String, dynamic> json) =
      _$_GetPasswordProviderRpcBuilder.fromJson;

  @override
  @JsonKey(name: 'id_input')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetPasswordProviderRpcBuilderCopyWith<_$_GetPasswordProviderRpcBuilder>
      get copyWith => throw _privateConstructorUsedError;
}
