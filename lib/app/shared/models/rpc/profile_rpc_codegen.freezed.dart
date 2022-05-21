// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_rpc_codegen.dart';

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

AddUpdateProfileRpcBuilder _$AddUpdateProfileRpcBuilderFromJson(
    Map<String, dynamic> json) {
  return _AddUpdateProfileRpcBuilder.fromJson(json);
}

/// @nodoc
mixin _$AddUpdateProfileRpcBuilder {
  @JsonKey(name: 'uid_input')
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'username_input')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url_input')
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddUpdateProfileRpcBuilderCopyWith<AddUpdateProfileRpcBuilder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateProfileRpcBuilderCopyWith<$Res> {
  factory $AddUpdateProfileRpcBuilderCopyWith(AddUpdateProfileRpcBuilder value,
          $Res Function(AddUpdateProfileRpcBuilder) then) =
      _$AddUpdateProfileRpcBuilderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'uid_input') String uid,
      @JsonKey(name: 'username_input') String? username,
      @JsonKey(name: 'avatar_url_input') String? avatarUrl});
}

/// @nodoc
class _$AddUpdateProfileRpcBuilderCopyWithImpl<$Res>
    implements $AddUpdateProfileRpcBuilderCopyWith<$Res> {
  _$AddUpdateProfileRpcBuilderCopyWithImpl(this._value, this._then);

  final AddUpdateProfileRpcBuilder _value;
  // ignore: unused_field
  final $Res Function(AddUpdateProfileRpcBuilder) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? username = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AddUpdateProfileRpcBuilderCopyWith<$Res>
    implements $AddUpdateProfileRpcBuilderCopyWith<$Res> {
  factory _$$_AddUpdateProfileRpcBuilderCopyWith(
          _$_AddUpdateProfileRpcBuilder value,
          $Res Function(_$_AddUpdateProfileRpcBuilder) then) =
      __$$_AddUpdateProfileRpcBuilderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'uid_input') String uid,
      @JsonKey(name: 'username_input') String? username,
      @JsonKey(name: 'avatar_url_input') String? avatarUrl});
}

/// @nodoc
class __$$_AddUpdateProfileRpcBuilderCopyWithImpl<$Res>
    extends _$AddUpdateProfileRpcBuilderCopyWithImpl<$Res>
    implements _$$_AddUpdateProfileRpcBuilderCopyWith<$Res> {
  __$$_AddUpdateProfileRpcBuilderCopyWithImpl(
      _$_AddUpdateProfileRpcBuilder _value,
      $Res Function(_$_AddUpdateProfileRpcBuilder) _then)
      : super(_value, (v) => _then(v as _$_AddUpdateProfileRpcBuilder));

  @override
  _$_AddUpdateProfileRpcBuilder get _value =>
      super._value as _$_AddUpdateProfileRpcBuilder;

  @override
  $Res call({
    Object? uid = freezed,
    Object? username = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$_AddUpdateProfileRpcBuilder(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddUpdateProfileRpcBuilder extends _AddUpdateProfileRpcBuilder {
  const _$_AddUpdateProfileRpcBuilder(
      {@JsonKey(name: 'uid_input') required this.uid,
      @JsonKey(name: 'username_input') this.username,
      @JsonKey(name: 'avatar_url_input') this.avatarUrl})
      : super._();

  factory _$_AddUpdateProfileRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_AddUpdateProfileRpcBuilderFromJson(json);

  @override
  @JsonKey(name: 'uid_input')
  final String uid;
  @override
  @JsonKey(name: 'username_input')
  final String? username;
  @override
  @JsonKey(name: 'avatar_url_input')
  final String? avatarUrl;

  @override
  String toString() {
    return 'AddUpdateProfileRpcBuilder(uid: $uid, username: $username, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddUpdateProfileRpcBuilder &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(avatarUrl));

  @JsonKey(ignore: true)
  @override
  _$$_AddUpdateProfileRpcBuilderCopyWith<_$_AddUpdateProfileRpcBuilder>
      get copyWith => __$$_AddUpdateProfileRpcBuilderCopyWithImpl<
          _$_AddUpdateProfileRpcBuilder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddUpdateProfileRpcBuilderToJson(this);
  }
}

abstract class _AddUpdateProfileRpcBuilder extends AddUpdateProfileRpcBuilder {
  const factory _AddUpdateProfileRpcBuilder(
          {@JsonKey(name: 'uid_input') required final String uid,
          @JsonKey(name: 'username_input') final String? username,
          @JsonKey(name: 'avatar_url_input') final String? avatarUrl}) =
      _$_AddUpdateProfileRpcBuilder;
  const _AddUpdateProfileRpcBuilder._() : super._();

  factory _AddUpdateProfileRpcBuilder.fromJson(Map<String, dynamic> json) =
      _$_AddUpdateProfileRpcBuilder.fromJson;

  @override
  @JsonKey(name: 'uid_input')
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'username_input')
  String? get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avatar_url_input')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddUpdateProfileRpcBuilderCopyWith<_$_AddUpdateProfileRpcBuilder>
      get copyWith => throw _privateConstructorUsedError;
}

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
