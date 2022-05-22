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
  return _GetPasswordDataRpcBuilderById.fromJson(json);
}

/// @nodoc
mixin _$GetPasswordDataRpcBuilder {
  @JsonKey(name: 'id_input')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid_input')
  String? get uid => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'id_input') int? id,
      @JsonKey(name: 'uid_input') String? uid});
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
    Object? id = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GetPasswordDataRpcBuilderByIdCopyWith<$Res>
    implements $GetPasswordDataRpcBuilderCopyWith<$Res> {
  factory _$$_GetPasswordDataRpcBuilderByIdCopyWith(
          _$_GetPasswordDataRpcBuilderById value,
          $Res Function(_$_GetPasswordDataRpcBuilderById) then) =
      __$$_GetPasswordDataRpcBuilderByIdCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id_input') int? id,
      @JsonKey(name: 'uid_input') String? uid});
}

/// @nodoc
class __$$_GetPasswordDataRpcBuilderByIdCopyWithImpl<$Res>
    extends _$GetPasswordDataRpcBuilderCopyWithImpl<$Res>
    implements _$$_GetPasswordDataRpcBuilderByIdCopyWith<$Res> {
  __$$_GetPasswordDataRpcBuilderByIdCopyWithImpl(
      _$_GetPasswordDataRpcBuilderById _value,
      $Res Function(_$_GetPasswordDataRpcBuilderById) _then)
      : super(_value, (v) => _then(v as _$_GetPasswordDataRpcBuilderById));

  @override
  _$_GetPasswordDataRpcBuilderById get _value =>
      super._value as _$_GetPasswordDataRpcBuilderById;

  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
  }) {
    return _then(_$_GetPasswordDataRpcBuilderById(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPasswordDataRpcBuilderById extends _GetPasswordDataRpcBuilderById {
  const _$_GetPasswordDataRpcBuilderById(
      {@JsonKey(name: 'id_input') this.id,
      @JsonKey(name: 'uid_input') this.uid})
      : super._();

  factory _$_GetPasswordDataRpcBuilderById.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetPasswordDataRpcBuilderByIdFromJson(json);

  @override
  @JsonKey(name: 'id_input')
  final int? id;
  @override
  @JsonKey(name: 'uid_input')
  final String? uid;

  @override
  String toString() {
    return 'GetPasswordDataRpcBuilder(id: $id, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPasswordDataRpcBuilderById &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_GetPasswordDataRpcBuilderByIdCopyWith<_$_GetPasswordDataRpcBuilderById>
      get copyWith => __$$_GetPasswordDataRpcBuilderByIdCopyWithImpl<
          _$_GetPasswordDataRpcBuilderById>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPasswordDataRpcBuilderByIdToJson(this);
  }
}

abstract class _GetPasswordDataRpcBuilderById
    extends GetPasswordDataRpcBuilder {
  const factory _GetPasswordDataRpcBuilderById(
          {@JsonKey(name: 'id_input') final int? id,
          @JsonKey(name: 'uid_input') final String? uid}) =
      _$_GetPasswordDataRpcBuilderById;
  const _GetPasswordDataRpcBuilderById._() : super._();

  factory _GetPasswordDataRpcBuilderById.fromJson(Map<String, dynamic> json) =
      _$_GetPasswordDataRpcBuilderById.fromJson;

  @override
  @JsonKey(name: 'id_input')
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'uid_input')
  String? get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetPasswordDataRpcBuilderByIdCopyWith<_$_GetPasswordDataRpcBuilderById>
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

/// @nodoc
mixin _$AddUpdatePasswordRpcBuilder {
  PasswordFormState get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUpdatePasswordRpcBuilderCopyWith<AddUpdatePasswordRpcBuilder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdatePasswordRpcBuilderCopyWith<$Res> {
  factory $AddUpdatePasswordRpcBuilderCopyWith(
          AddUpdatePasswordRpcBuilder value,
          $Res Function(AddUpdatePasswordRpcBuilder) then) =
      _$AddUpdatePasswordRpcBuilderCopyWithImpl<$Res>;
  $Res call({PasswordFormState state});

  $PasswordFormStateCopyWith<$Res> get state;
}

/// @nodoc
class _$AddUpdatePasswordRpcBuilderCopyWithImpl<$Res>
    implements $AddUpdatePasswordRpcBuilderCopyWith<$Res> {
  _$AddUpdatePasswordRpcBuilderCopyWithImpl(this._value, this._then);

  final AddUpdatePasswordRpcBuilder _value;
  // ignore: unused_field
  final $Res Function(AddUpdatePasswordRpcBuilder) _then;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PasswordFormState,
    ));
  }

  @override
  $PasswordFormStateCopyWith<$Res> get state {
    return $PasswordFormStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddUpdatePasswordRpcBuilderCopyWith<$Res>
    implements $AddUpdatePasswordRpcBuilderCopyWith<$Res> {
  factory _$$_AddUpdatePasswordRpcBuilderCopyWith(
          _$_AddUpdatePasswordRpcBuilder value,
          $Res Function(_$_AddUpdatePasswordRpcBuilder) then) =
      __$$_AddUpdatePasswordRpcBuilderCopyWithImpl<$Res>;
  @override
  $Res call({PasswordFormState state});

  @override
  $PasswordFormStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_AddUpdatePasswordRpcBuilderCopyWithImpl<$Res>
    extends _$AddUpdatePasswordRpcBuilderCopyWithImpl<$Res>
    implements _$$_AddUpdatePasswordRpcBuilderCopyWith<$Res> {
  __$$_AddUpdatePasswordRpcBuilderCopyWithImpl(
      _$_AddUpdatePasswordRpcBuilder _value,
      $Res Function(_$_AddUpdatePasswordRpcBuilder) _then)
      : super(_value, (v) => _then(v as _$_AddUpdatePasswordRpcBuilder));

  @override
  _$_AddUpdatePasswordRpcBuilder get _value =>
      super._value as _$_AddUpdatePasswordRpcBuilder;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$_AddUpdatePasswordRpcBuilder(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PasswordFormState,
    ));
  }
}

/// @nodoc

class _$_AddUpdatePasswordRpcBuilder extends _AddUpdatePasswordRpcBuilder {
  _$_AddUpdatePasswordRpcBuilder({required this.state}) : super._();

  @override
  final PasswordFormState state;

  @override
  String toString() {
    return 'AddUpdatePasswordRpcBuilder(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddUpdatePasswordRpcBuilder &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$$_AddUpdatePasswordRpcBuilderCopyWith<_$_AddUpdatePasswordRpcBuilder>
      get copyWith => __$$_AddUpdatePasswordRpcBuilderCopyWithImpl<
          _$_AddUpdatePasswordRpcBuilder>(this, _$identity);
}

abstract class _AddUpdatePasswordRpcBuilder
    extends AddUpdatePasswordRpcBuilder {
  factory _AddUpdatePasswordRpcBuilder(
          {required final PasswordFormState state}) =
      _$_AddUpdatePasswordRpcBuilder;
  _AddUpdatePasswordRpcBuilder._() : super._();

  @override
  PasswordFormState get state => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddUpdatePasswordRpcBuilderCopyWith<_$_AddUpdatePasswordRpcBuilder>
      get copyWith => throw _privateConstructorUsedError;
}

DeletePasswordRpcBuilder _$DeletePasswordRpcBuilderFromJson(
    Map<String, dynamic> json) {
  return _DeletePasswordRpcBuilder.fromJson(json);
}

/// @nodoc
mixin _$DeletePasswordRpcBuilder {
  @JsonKey(name: 'id_input')
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeletePasswordRpcBuilderCopyWith<DeletePasswordRpcBuilder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletePasswordRpcBuilderCopyWith<$Res> {
  factory $DeletePasswordRpcBuilderCopyWith(DeletePasswordRpcBuilder value,
          $Res Function(DeletePasswordRpcBuilder) then) =
      _$DeletePasswordRpcBuilderCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id_input') int id});
}

/// @nodoc
class _$DeletePasswordRpcBuilderCopyWithImpl<$Res>
    implements $DeletePasswordRpcBuilderCopyWith<$Res> {
  _$DeletePasswordRpcBuilderCopyWithImpl(this._value, this._then);

  final DeletePasswordRpcBuilder _value;
  // ignore: unused_field
  final $Res Function(DeletePasswordRpcBuilder) _then;

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
abstract class _$$_DeletePasswordRpcBuilderCopyWith<$Res>
    implements $DeletePasswordRpcBuilderCopyWith<$Res> {
  factory _$$_DeletePasswordRpcBuilderCopyWith(
          _$_DeletePasswordRpcBuilder value,
          $Res Function(_$_DeletePasswordRpcBuilder) then) =
      __$$_DeletePasswordRpcBuilderCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id_input') int id});
}

/// @nodoc
class __$$_DeletePasswordRpcBuilderCopyWithImpl<$Res>
    extends _$DeletePasswordRpcBuilderCopyWithImpl<$Res>
    implements _$$_DeletePasswordRpcBuilderCopyWith<$Res> {
  __$$_DeletePasswordRpcBuilderCopyWithImpl(_$_DeletePasswordRpcBuilder _value,
      $Res Function(_$_DeletePasswordRpcBuilder) _then)
      : super(_value, (v) => _then(v as _$_DeletePasswordRpcBuilder));

  @override
  _$_DeletePasswordRpcBuilder get _value =>
      super._value as _$_DeletePasswordRpcBuilder;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_DeletePasswordRpcBuilder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeletePasswordRpcBuilder extends _DeletePasswordRpcBuilder {
  _$_DeletePasswordRpcBuilder({@JsonKey(name: 'id_input') required this.id})
      : super._();

  factory _$_DeletePasswordRpcBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_DeletePasswordRpcBuilderFromJson(json);

  @override
  @JsonKey(name: 'id_input')
  final int id;

  @override
  String toString() {
    return 'DeletePasswordRpcBuilder(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePasswordRpcBuilder &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_DeletePasswordRpcBuilderCopyWith<_$_DeletePasswordRpcBuilder>
      get copyWith => __$$_DeletePasswordRpcBuilderCopyWithImpl<
          _$_DeletePasswordRpcBuilder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeletePasswordRpcBuilderToJson(this);
  }
}

abstract class _DeletePasswordRpcBuilder extends DeletePasswordRpcBuilder {
  factory _DeletePasswordRpcBuilder(
          {@JsonKey(name: 'id_input') required final int id}) =
      _$_DeletePasswordRpcBuilder;
  _DeletePasswordRpcBuilder._() : super._();

  factory _DeletePasswordRpcBuilder.fromJson(Map<String, dynamic> json) =
      _$_DeletePasswordRpcBuilder.fromJson;

  @override
  @JsonKey(name: 'id_input')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeletePasswordRpcBuilderCopyWith<_$_DeletePasswordRpcBuilder>
      get copyWith => throw _privateConstructorUsedError;
}
