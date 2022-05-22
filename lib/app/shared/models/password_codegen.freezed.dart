// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordData _$PasswordDataFromJson(Map<String, dynamic> json) {
  return _PasswordData.fromJson(json);
}

/// @nodoc
mixin _$PasswordData {
  int get id => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  PasswordProvider get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordDataCopyWith<PasswordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordDataCopyWith<$Res> {
  factory $PasswordDataCopyWith(
          PasswordData value, $Res Function(PasswordData) then) =
      _$PasswordDataCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String password,
      String? username,
      @JsonKey(name: 'created_at') DateTime createdAt,
      PasswordProvider provider,
      @JsonKey(name: 'user_id') String userId});

  $PasswordProviderCopyWith<$Res> get provider;
}

/// @nodoc
class _$PasswordDataCopyWithImpl<$Res> implements $PasswordDataCopyWith<$Res> {
  _$PasswordDataCopyWithImpl(this._value, this._then);

  final PasswordData _value;
  // ignore: unused_field
  final $Res Function(PasswordData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
    Object? provider = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PasswordProvider,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PasswordProviderCopyWith<$Res> get provider {
    return $PasswordProviderCopyWith<$Res>(_value.provider, (value) {
      return _then(_value.copyWith(provider: value));
    });
  }
}

/// @nodoc
abstract class _$$_PasswordDataCopyWith<$Res>
    implements $PasswordDataCopyWith<$Res> {
  factory _$$_PasswordDataCopyWith(
          _$_PasswordData value, $Res Function(_$_PasswordData) then) =
      __$$_PasswordDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String password,
      String? username,
      @JsonKey(name: 'created_at') DateTime createdAt,
      PasswordProvider provider,
      @JsonKey(name: 'user_id') String userId});

  @override
  $PasswordProviderCopyWith<$Res> get provider;
}

/// @nodoc
class __$$_PasswordDataCopyWithImpl<$Res>
    extends _$PasswordDataCopyWithImpl<$Res>
    implements _$$_PasswordDataCopyWith<$Res> {
  __$$_PasswordDataCopyWithImpl(
      _$_PasswordData _value, $Res Function(_$_PasswordData) _then)
      : super(_value, (v) => _then(v as _$_PasswordData));

  @override
  _$_PasswordData get _value => super._value as _$_PasswordData;

  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
    Object? provider = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_PasswordData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PasswordProvider,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PasswordData extends _PasswordData {
  const _$_PasswordData(
      {required this.id,
      required this.password,
      this.username,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.provider,
      @JsonKey(name: 'user_id') required this.userId})
      : super._();

  factory _$_PasswordData.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordDataFromJson(json);

  @override
  final int id;
  @override
  final String password;
  @override
  final String? username;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final PasswordProvider provider;
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'PasswordData(id: $id, password: $password, username: $username, createdAt: $createdAt, provider: $provider, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.provider, provider) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(provider),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordDataCopyWith<_$_PasswordData> get copyWith =>
      __$$_PasswordDataCopyWithImpl<_$_PasswordData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordDataToJson(this);
  }
}

abstract class _PasswordData extends PasswordData {
  const factory _PasswordData(
          {required final int id,
          required final String password,
          final String? username,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          required final PasswordProvider provider,
          @JsonKey(name: 'user_id') required final String userId}) =
      _$_PasswordData;
  const _PasswordData._() : super._();

  factory _PasswordData.fromJson(Map<String, dynamic> json) =
      _$_PasswordData.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String? get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  PasswordProvider get provider => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordDataCopyWith<_$_PasswordData> get copyWith =>
      throw _privateConstructorUsedError;
}

PasswordProvider _$PasswordProviderFromJson(Map<String, dynamic> json) {
  return _PasswordProvider.fromJson(json);
}

/// @nodoc
mixin _$PasswordProvider {
  int get id => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'host_url')
  String get hostUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_path')
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordProviderCopyWith<PasswordProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordProviderCopyWith<$Res> {
  factory $PasswordProviderCopyWith(
          PasswordProvider value, $Res Function(PasswordProvider) then) =
      _$PasswordProviderCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String color,
      @JsonKey(name: 'host_url') String hostUrl,
      @JsonKey(name: 'image_path') String imagePath,
      String name});
}

/// @nodoc
class _$PasswordProviderCopyWithImpl<$Res>
    implements $PasswordProviderCopyWith<$Res> {
  _$PasswordProviderCopyWithImpl(this._value, this._then);

  final PasswordProvider _value;
  // ignore: unused_field
  final $Res Function(PasswordProvider) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? color = freezed,
    Object? hostUrl = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      hostUrl: hostUrl == freezed
          ? _value.hostUrl
          : hostUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PasswordProviderCopyWith<$Res>
    implements $PasswordProviderCopyWith<$Res> {
  factory _$$_PasswordProviderCopyWith(
          _$_PasswordProvider value, $Res Function(_$_PasswordProvider) then) =
      __$$_PasswordProviderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String color,
      @JsonKey(name: 'host_url') String hostUrl,
      @JsonKey(name: 'image_path') String imagePath,
      String name});
}

/// @nodoc
class __$$_PasswordProviderCopyWithImpl<$Res>
    extends _$PasswordProviderCopyWithImpl<$Res>
    implements _$$_PasswordProviderCopyWith<$Res> {
  __$$_PasswordProviderCopyWithImpl(
      _$_PasswordProvider _value, $Res Function(_$_PasswordProvider) _then)
      : super(_value, (v) => _then(v as _$_PasswordProvider));

  @override
  _$_PasswordProvider get _value => super._value as _$_PasswordProvider;

  @override
  $Res call({
    Object? id = freezed,
    Object? color = freezed,
    Object? hostUrl = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_PasswordProvider(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      hostUrl: hostUrl == freezed
          ? _value.hostUrl
          : hostUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PasswordProvider implements _PasswordProvider {
  const _$_PasswordProvider(
      {required this.id,
      required this.color,
      @JsonKey(name: 'host_url') required this.hostUrl,
      @JsonKey(name: 'image_path') required this.imagePath,
      required this.name});

  factory _$_PasswordProvider.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordProviderFromJson(json);

  @override
  final int id;
  @override
  final String color;
  @override
  @JsonKey(name: 'host_url')
  final String hostUrl;
  @override
  @JsonKey(name: 'image_path')
  final String imagePath;
  @override
  final String name;

  @override
  String toString() {
    return 'PasswordProvider(id: $id, color: $color, hostUrl: $hostUrl, imagePath: $imagePath, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordProvider &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.hostUrl, hostUrl) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(hostUrl),
      const DeepCollectionEquality().hash(imagePath),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordProviderCopyWith<_$_PasswordProvider> get copyWith =>
      __$$_PasswordProviderCopyWithImpl<_$_PasswordProvider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordProviderToJson(this);
  }
}

abstract class _PasswordProvider implements PasswordProvider {
  const factory _PasswordProvider(
      {required final int id,
      required final String color,
      @JsonKey(name: 'host_url') required final String hostUrl,
      @JsonKey(name: 'image_path') required final String imagePath,
      required final String name}) = _$_PasswordProvider;

  factory _PasswordProvider.fromJson(Map<String, dynamic> json) =
      _$_PasswordProvider.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'host_url')
  String get hostUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image_path')
  String get imagePath => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordProviderCopyWith<_$_PasswordProvider> get copyWith =>
      throw _privateConstructorUsedError;
}
