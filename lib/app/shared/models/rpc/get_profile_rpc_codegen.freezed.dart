// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_profile_rpc_codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProfilesRpcBuilder _$GetProfilesRpcBuilderFromJson(
    Map<String, dynamic> json) {
  return _GetProfilesRpcBuilder.fromJson(json);
}

/// @nodoc
mixin _$GetProfilesRpcBuilder {
  @JsonKey(name: 'uid_input')
  String? get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfilesRpcBuilderCopyWith<GetProfilesRpcBuilder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfilesRpcBuilderCopyWith<$Res> {
  factory $GetProfilesRpcBuilderCopyWith(GetProfilesRpcBuilder value,
          $Res Function(GetProfilesRpcBuilder) then) =
      _$GetProfilesRpcBuilderCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'uid_input') String? uid});
}

/// @nodoc
class _$GetProfilesRpcBuilderCopyWithImpl<$Res>
    implements $GetProfilesRpcBuilderCopyWith<$Res> {
  _$GetProfilesRpcBuilderCopyWithImpl(this._value, this._then);

  final GetProfilesRpcBuilder _value;
  // ignore: unused_field
  final $Res Function(GetProfilesRpcBuilder) _then;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GetProfilesRpcBuilderCopyWith<$Res>
    implements $GetProfilesRpcBuilderCopyWith<$Res> {
  factory _$$_GetProfilesRpcBuilderCopyWith(_$_GetProfilesRpcBuilder value,
          $Res Function(_$_GetProfilesRpcBuilder) then) =
      __$$_GetProfilesRpcBuilderCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'uid_input') String? uid});
}

/// @nodoc
class __$$_GetProfilesRpcBuilderCopyWithImpl<$Res>
    extends _$GetProfilesRpcBuilderCopyWithImpl<$Res>
    implements _$$_GetProfilesRpcBuilderCopyWith<$Res> {
  __$$_GetProfilesRpcBuilderCopyWithImpl(_$_GetProfilesRpcBuilder _value,
      $Res Function(_$_GetProfilesRpcBuilder) _then)
      : super(_value, (v) => _then(v as _$_GetProfilesRpcBuilder));

  @override
  _$_GetProfilesRpcBuilder get _value =>
      super._value as _$_GetProfilesRpcBuilder;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_GetProfilesRpcBuilder(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetProfilesRpcBuilder extends _GetProfilesRpcBuilder {
  const _$_GetProfilesRpcBuilder({@JsonKey(name: 'uid_input') this.uid})
      : super._();

  factory _$_GetProfilesRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_GetProfilesRpcBuilderFromJson(json);

  @override
  @JsonKey(name: 'uid_input')
  final String? uid;

  @override
  String toString() {
    return 'GetProfilesRpcBuilder(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProfilesRpcBuilder &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_GetProfilesRpcBuilderCopyWith<_$_GetProfilesRpcBuilder> get copyWith =>
      __$$_GetProfilesRpcBuilderCopyWithImpl<_$_GetProfilesRpcBuilder>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetProfilesRpcBuilderToJson(this);
  }
}

abstract class _GetProfilesRpcBuilder extends GetProfilesRpcBuilder {
  const factory _GetProfilesRpcBuilder(
          {@JsonKey(name: 'uid_input') final String? uid}) =
      _$_GetProfilesRpcBuilder;
  const _GetProfilesRpcBuilder._() : super._();

  factory _GetProfilesRpcBuilder.fromJson(Map<String, dynamic> json) =
      _$_GetProfilesRpcBuilder.fromJson;

  @override
  @JsonKey(name: 'uid_input')
  String? get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetProfilesRpcBuilderCopyWith<_$_GetProfilesRpcBuilder> get copyWith =>
      throw _privateConstructorUsedError;
}
