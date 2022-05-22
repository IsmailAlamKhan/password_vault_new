// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String route, Object? extra) go,
    required TResult Function(String route, Object? extra) push,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationGoEvent value) go,
    required TResult Function(NavigationPushEvent value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;
}

/// @nodoc
abstract class _$$NavigationGoEventCopyWith<$Res> {
  factory _$$NavigationGoEventCopyWith(
          _$NavigationGoEvent value, $Res Function(_$NavigationGoEvent) then) =
      __$$NavigationGoEventCopyWithImpl<$Res>;
  $Res call({String route, Object? extra});
}

/// @nodoc
class __$$NavigationGoEventCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$NavigationGoEventCopyWith<$Res> {
  __$$NavigationGoEventCopyWithImpl(
      _$NavigationGoEvent _value, $Res Function(_$NavigationGoEvent) _then)
      : super(_value, (v) => _then(v as _$NavigationGoEvent));

  @override
  _$NavigationGoEvent get _value => super._value as _$NavigationGoEvent;

  @override
  $Res call({
    Object? route = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$NavigationGoEvent(
      route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      extra: extra == freezed ? _value.extra : extra,
    ));
  }
}

/// @nodoc

class _$NavigationGoEvent implements NavigationGoEvent {
  const _$NavigationGoEvent(this.route, {this.extra});

  @override
  final String route;
  @override
  final Object? extra;

  @override
  String toString() {
    return 'NavigationEvent.go(route: $route, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationGoEvent &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality().equals(other.extra, extra));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(extra));

  @JsonKey(ignore: true)
  @override
  _$$NavigationGoEventCopyWith<_$NavigationGoEvent> get copyWith =>
      __$$NavigationGoEventCopyWithImpl<_$NavigationGoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String route, Object? extra) go,
    required TResult Function(String route, Object? extra) push,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) {
    return go(route, extra);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) {
    return go?.call(route, extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
    required TResult orElse(),
  }) {
    if (go != null) {
      return go(route, extra);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationGoEvent value) go,
    required TResult Function(NavigationPushEvent value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) {
    return go(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) {
    return go?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
    required TResult orElse(),
  }) {
    if (go != null) {
      return go(this);
    }
    return orElse();
  }
}

abstract class NavigationGoEvent implements NavigationEvent {
  const factory NavigationGoEvent(final String route, {final Object? extra}) =
      _$NavigationGoEvent;

  String get route => throw _privateConstructorUsedError;
  Object? get extra => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NavigationGoEventCopyWith<_$NavigationGoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigationPushEventCopyWith<$Res> {
  factory _$$NavigationPushEventCopyWith(_$NavigationPushEvent value,
          $Res Function(_$NavigationPushEvent) then) =
      __$$NavigationPushEventCopyWithImpl<$Res>;
  $Res call({String route, Object? extra});
}

/// @nodoc
class __$$NavigationPushEventCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$NavigationPushEventCopyWith<$Res> {
  __$$NavigationPushEventCopyWithImpl(
      _$NavigationPushEvent _value, $Res Function(_$NavigationPushEvent) _then)
      : super(_value, (v) => _then(v as _$NavigationPushEvent));

  @override
  _$NavigationPushEvent get _value => super._value as _$NavigationPushEvent;

  @override
  $Res call({
    Object? route = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$NavigationPushEvent(
      route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      extra: extra == freezed ? _value.extra : extra,
    ));
  }
}

/// @nodoc

class _$NavigationPushEvent implements NavigationPushEvent {
  const _$NavigationPushEvent(this.route, {this.extra});

  @override
  final String route;
  @override
  final Object? extra;

  @override
  String toString() {
    return 'NavigationEvent.push(route: $route, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationPushEvent &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality().equals(other.extra, extra));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(extra));

  @JsonKey(ignore: true)
  @override
  _$$NavigationPushEventCopyWith<_$NavigationPushEvent> get copyWith =>
      __$$NavigationPushEventCopyWithImpl<_$NavigationPushEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String route, Object? extra) go,
    required TResult Function(String route, Object? extra) push,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) {
    return push(route, extra);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) {
    return push?.call(route, extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(route, extra);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationGoEvent value) go,
    required TResult Function(NavigationPushEvent value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) {
    return push(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) {
    return push?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(this);
    }
    return orElse();
  }
}

abstract class NavigationPushEvent implements NavigationEvent {
  const factory NavigationPushEvent(final String route, {final Object? extra}) =
      _$NavigationPushEvent;

  String get route => throw _privateConstructorUsedError;
  Object? get extra => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NavigationPushEventCopyWith<_$NavigationPushEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigationEventPopCopyWith<$Res> {
  factory _$$NavigationEventPopCopyWith(_$NavigationEventPop value,
          $Res Function(_$NavigationEventPop) then) =
      __$$NavigationEventPopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationEventPopCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$NavigationEventPopCopyWith<$Res> {
  __$$NavigationEventPopCopyWithImpl(
      _$NavigationEventPop _value, $Res Function(_$NavigationEventPop) _then)
      : super(_value, (v) => _then(v as _$NavigationEventPop));

  @override
  _$NavigationEventPop get _value => super._value as _$NavigationEventPop;
}

/// @nodoc

class _$NavigationEventPop implements NavigationEventPop {
  const _$NavigationEventPop();

  @override
  String toString() {
    return 'NavigationEvent.pop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigationEventPop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String route, Object? extra) go,
    required TResult Function(String route, Object? extra) push,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) {
    return pop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) {
    return pop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationGoEvent value) go,
    required TResult Function(NavigationPushEvent value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class NavigationEventPop implements NavigationEvent {
  const factory NavigationEventPop() = _$NavigationEventPop;
}

/// @nodoc
abstract class _$$NavigationEventDialogCopyWith<$Res> {
  factory _$$NavigationEventDialogCopyWith(_$NavigationEventDialog value,
          $Res Function(_$NavigationEventDialog) then) =
      __$$NavigationEventDialogCopyWithImpl<$Res>;
  $Res call({WidgetBuilder builder});
}

/// @nodoc
class __$$NavigationEventDialogCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$NavigationEventDialogCopyWith<$Res> {
  __$$NavigationEventDialogCopyWithImpl(_$NavigationEventDialog _value,
      $Res Function(_$NavigationEventDialog) _then)
      : super(_value, (v) => _then(v as _$NavigationEventDialog));

  @override
  _$NavigationEventDialog get _value => super._value as _$NavigationEventDialog;

  @override
  $Res call({
    Object? builder = freezed,
  }) {
    return _then(_$NavigationEventDialog(
      builder == freezed
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WidgetBuilder,
    ));
  }
}

/// @nodoc

class _$NavigationEventDialog implements NavigationEventDialog {
  const _$NavigationEventDialog(this.builder);

  @override
  final WidgetBuilder builder;

  @override
  String toString() {
    return 'NavigationEvent.dialog(builder: $builder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationEventDialog &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, builder);

  @JsonKey(ignore: true)
  @override
  _$$NavigationEventDialogCopyWith<_$NavigationEventDialog> get copyWith =>
      __$$NavigationEventDialogCopyWithImpl<_$NavigationEventDialog>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String route, Object? extra) go,
    required TResult Function(String route, Object? extra) push,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) {
    return dialog(builder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) {
    return dialog?.call(builder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
    required TResult orElse(),
  }) {
    if (dialog != null) {
      return dialog(builder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationGoEvent value) go,
    required TResult Function(NavigationPushEvent value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) {
    return dialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) {
    return dialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
    required TResult orElse(),
  }) {
    if (dialog != null) {
      return dialog(this);
    }
    return orElse();
  }
}

abstract class NavigationEventDialog implements NavigationEvent {
  const factory NavigationEventDialog(final WidgetBuilder builder) =
      _$NavigationEventDialog;

  WidgetBuilder get builder => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NavigationEventDialogCopyWith<_$NavigationEventDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigationEventSnackbarCopyWith<$Res> {
  factory _$$NavigationEventSnackbarCopyWith(_$NavigationEventSnackbar value,
          $Res Function(_$NavigationEventSnackbar) then) =
      __$$NavigationEventSnackbarCopyWithImpl<$Res>;
  $Res call({SnackBar snackBar});
}

/// @nodoc
class __$$NavigationEventSnackbarCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$NavigationEventSnackbarCopyWith<$Res> {
  __$$NavigationEventSnackbarCopyWithImpl(_$NavigationEventSnackbar _value,
      $Res Function(_$NavigationEventSnackbar) _then)
      : super(_value, (v) => _then(v as _$NavigationEventSnackbar));

  @override
  _$NavigationEventSnackbar get _value =>
      super._value as _$NavigationEventSnackbar;

  @override
  $Res call({
    Object? snackBar = freezed,
  }) {
    return _then(_$NavigationEventSnackbar(
      snackBar == freezed
          ? _value.snackBar
          : snackBar // ignore: cast_nullable_to_non_nullable
              as SnackBar,
    ));
  }
}

/// @nodoc

class _$NavigationEventSnackbar implements NavigationEventSnackbar {
  const _$NavigationEventSnackbar(this.snackBar);

  @override
  final SnackBar snackBar;

  @override
  String toString() {
    return 'NavigationEvent.snackbar(snackBar: $snackBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationEventSnackbar &&
            const DeepCollectionEquality().equals(other.snackBar, snackBar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(snackBar));

  @JsonKey(ignore: true)
  @override
  _$$NavigationEventSnackbarCopyWith<_$NavigationEventSnackbar> get copyWith =>
      __$$NavigationEventSnackbarCopyWithImpl<_$NavigationEventSnackbar>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String route, Object? extra) go,
    required TResult Function(String route, Object? extra) push,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) {
    return snackbar(snackBar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) {
    return snackbar?.call(snackBar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, Object? extra)? go,
    TResult Function(String route, Object? extra)? push,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
    required TResult orElse(),
  }) {
    if (snackbar != null) {
      return snackbar(snackBar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationGoEvent value) go,
    required TResult Function(NavigationPushEvent value) push,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) {
    return snackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) {
    return snackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationGoEvent value)? go,
    TResult Function(NavigationPushEvent value)? push,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
    required TResult orElse(),
  }) {
    if (snackbar != null) {
      return snackbar(this);
    }
    return orElse();
  }
}

abstract class NavigationEventSnackbar implements NavigationEvent {
  const factory NavigationEventSnackbar(final SnackBar snackBar) =
      _$NavigationEventSnackbar;

  SnackBar get snackBar => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NavigationEventSnackbarCopyWith<_$NavigationEventSnackbar> get copyWith =>
      throw _privateConstructorUsedError;
}
