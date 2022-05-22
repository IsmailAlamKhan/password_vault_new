// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_form_state_codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordFormState {
  int? get id => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  PasswordProvider? get provider => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get haveChanged => throw _privateConstructorUsedError;
  SubmitState get submitState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordFormStateCopyWith<PasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordFormStateCopyWith<$Res> {
  factory $PasswordFormStateCopyWith(
          PasswordFormState value, $Res Function(PasswordFormState) then) =
      _$PasswordFormStateCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      Password password,
      Username username,
      PasswordProvider? provider,
      String userId,
      bool haveChanged,
      SubmitState submitState});

  $PasswordProviderCopyWith<$Res>? get provider;
}

/// @nodoc
class _$PasswordFormStateCopyWithImpl<$Res>
    implements $PasswordFormStateCopyWith<$Res> {
  _$PasswordFormStateCopyWithImpl(this._value, this._then);

  final PasswordFormState _value;
  // ignore: unused_field
  final $Res Function(PasswordFormState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? username = freezed,
    Object? provider = freezed,
    Object? userId = freezed,
    Object? haveChanged = freezed,
    Object? submitState = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PasswordProvider?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      haveChanged: haveChanged == freezed
          ? _value.haveChanged
          : haveChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      submitState: submitState == freezed
          ? _value.submitState
          : submitState // ignore: cast_nullable_to_non_nullable
              as SubmitState,
    ));
  }

  @override
  $PasswordProviderCopyWith<$Res>? get provider {
    if (_value.provider == null) {
      return null;
    }

    return $PasswordProviderCopyWith<$Res>(_value.provider!, (value) {
      return _then(_value.copyWith(provider: value));
    });
  }
}

/// @nodoc
abstract class _$$_PasswordFormStateCopyWith<$Res>
    implements $PasswordFormStateCopyWith<$Res> {
  factory _$$_PasswordFormStateCopyWith(_$_PasswordFormState value,
          $Res Function(_$_PasswordFormState) then) =
      __$$_PasswordFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      Password password,
      Username username,
      PasswordProvider? provider,
      String userId,
      bool haveChanged,
      SubmitState submitState});

  @override
  $PasswordProviderCopyWith<$Res>? get provider;
}

/// @nodoc
class __$$_PasswordFormStateCopyWithImpl<$Res>
    extends _$PasswordFormStateCopyWithImpl<$Res>
    implements _$$_PasswordFormStateCopyWith<$Res> {
  __$$_PasswordFormStateCopyWithImpl(
      _$_PasswordFormState _value, $Res Function(_$_PasswordFormState) _then)
      : super(_value, (v) => _then(v as _$_PasswordFormState));

  @override
  _$_PasswordFormState get _value => super._value as _$_PasswordFormState;

  @override
  $Res call({
    Object? id = freezed,
    Object? password = freezed,
    Object? username = freezed,
    Object? provider = freezed,
    Object? userId = freezed,
    Object? haveChanged = freezed,
    Object? submitState = freezed,
  }) {
    return _then(_$_PasswordFormState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as PasswordProvider?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      haveChanged: haveChanged == freezed
          ? _value.haveChanged
          : haveChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      submitState: submitState == freezed
          ? _value.submitState
          : submitState // ignore: cast_nullable_to_non_nullable
              as SubmitState,
    ));
  }
}

/// @nodoc

class _$_PasswordFormState extends _PasswordFormState {
  const _$_PasswordFormState(
      {this.id,
      this.password = const Password.pure(),
      this.username = const Username.pureNonRequired(),
      this.provider,
      required this.userId,
      this.haveChanged = false,
      this.submitState = SubmitState.idle})
      : super._();

  @override
  final int? id;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final Username username;
  @override
  final PasswordProvider? provider;
  @override
  final String userId;
  @override
  @JsonKey()
  final bool haveChanged;
  @override
  @JsonKey()
  final SubmitState submitState;

  @override
  String toString() {
    return 'PasswordFormState(id: $id, password: $password, username: $username, provider: $provider, userId: $userId, haveChanged: $haveChanged, submitState: $submitState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordFormState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.provider, provider) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.haveChanged, haveChanged) &&
            const DeepCollectionEquality()
                .equals(other.submitState, submitState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(provider),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(haveChanged),
      const DeepCollectionEquality().hash(submitState));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordFormStateCopyWith<_$_PasswordFormState> get copyWith =>
      __$$_PasswordFormStateCopyWithImpl<_$_PasswordFormState>(
          this, _$identity);
}

abstract class _PasswordFormState extends PasswordFormState {
  const factory _PasswordFormState(
      {final int? id,
      final Password password,
      final Username username,
      final PasswordProvider? provider,
      required final String userId,
      final bool haveChanged,
      final SubmitState submitState}) = _$_PasswordFormState;
  const _PasswordFormState._() : super._();

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  PasswordProvider? get provider => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  bool get haveChanged => throw _privateConstructorUsedError;
  @override
  SubmitState get submitState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordFormStateCopyWith<_$_PasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
