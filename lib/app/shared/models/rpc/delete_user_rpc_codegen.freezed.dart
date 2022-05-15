// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_user_rpc_codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteUserRpcBuilder _$DeleteUserRpcBuilderFromJson(Map<String, dynamic> json) {
  return _DeleteUserRpcBuilder.fromJson(json);
}

/// @nodoc
mixin _$DeleteUserRpcBuilder {
  @JsonKey(name: 'uid_input')
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteUserRpcBuilderCopyWith<DeleteUserRpcBuilder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteUserRpcBuilderCopyWith<$Res> {
  factory $DeleteUserRpcBuilderCopyWith(DeleteUserRpcBuilder value,
          $Res Function(DeleteUserRpcBuilder) then) =
      _$DeleteUserRpcBuilderCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'uid_input') String uid});
}

/// @nodoc
class _$DeleteUserRpcBuilderCopyWithImpl<$Res>
    implements $DeleteUserRpcBuilderCopyWith<$Res> {
  _$DeleteUserRpcBuilderCopyWithImpl(this._value, this._then);

  final DeleteUserRpcBuilder _value;
  // ignore: unused_field
  final $Res Function(DeleteUserRpcBuilder) _then;

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
abstract class _$$_DeleteUserRpcBuilderCopyWith<$Res>
    implements $DeleteUserRpcBuilderCopyWith<$Res> {
  factory _$$_DeleteUserRpcBuilderCopyWith(_$_DeleteUserRpcBuilder value,
          $Res Function(_$_DeleteUserRpcBuilder) then) =
      __$$_DeleteUserRpcBuilderCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'uid_input') String uid});
}

/// @nodoc
class __$$_DeleteUserRpcBuilderCopyWithImpl<$Res>
    extends _$DeleteUserRpcBuilderCopyWithImpl<$Res>
    implements _$$_DeleteUserRpcBuilderCopyWith<$Res> {
  __$$_DeleteUserRpcBuilderCopyWithImpl(_$_DeleteUserRpcBuilder _value,
      $Res Function(_$_DeleteUserRpcBuilder) _then)
      : super(_value, (v) => _then(v as _$_DeleteUserRpcBuilder));

  @override
  _$_DeleteUserRpcBuilder get _value => super._value as _$_DeleteUserRpcBuilder;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_DeleteUserRpcBuilder(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteUserRpcBuilder extends _DeleteUserRpcBuilder {
  const _$_DeleteUserRpcBuilder({@JsonKey(name: 'uid_input') required this.uid})
      : super._();

  factory _$_DeleteUserRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteUserRpcBuilderFromJson(json);

  @override
  @JsonKey(name: 'uid_input')
  final String uid;

  @override
  String toString() {
    return 'DeleteUserRpcBuilder(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteUserRpcBuilder &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteUserRpcBuilderCopyWith<_$_DeleteUserRpcBuilder> get copyWith =>
      __$$_DeleteUserRpcBuilderCopyWithImpl<_$_DeleteUserRpcBuilder>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteUserRpcBuilderToJson(this);
  }
}

abstract class _DeleteUserRpcBuilder extends DeleteUserRpcBuilder {
  const factory _DeleteUserRpcBuilder(
          {@JsonKey(name: 'uid_input') required final String uid}) =
      _$_DeleteUserRpcBuilder;
  const _DeleteUserRpcBuilder._() : super._();

  factory _DeleteUserRpcBuilder.fromJson(Map<String, dynamic> json) =
      _$_DeleteUserRpcBuilder.fromJson;

  @override
  @JsonKey(name: 'uid_input')
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteUserRpcBuilderCopyWith<_$_DeleteUserRpcBuilder> get copyWith =>
      throw _privateConstructorUsedError;
}
