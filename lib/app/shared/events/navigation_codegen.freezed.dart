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
    required TResult Function(String route, bool replaceAll) page,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, bool replaceAll)? page,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, bool replaceAll)? page,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationEventPage value) page,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationEventPage value)? page,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationEventPage value)? page,
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
abstract class _$$NavigationEventPageCopyWith<$Res> {
  factory _$$NavigationEventPageCopyWith(_$NavigationEventPage value,
          $Res Function(_$NavigationEventPage) then) =
      __$$NavigationEventPageCopyWithImpl<$Res>;
  $Res call({String route, bool replaceAll});
}

/// @nodoc
class __$$NavigationEventPageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$NavigationEventPageCopyWith<$Res> {
  __$$NavigationEventPageCopyWithImpl(
      _$NavigationEventPage _value, $Res Function(_$NavigationEventPage) _then)
      : super(_value, (v) => _then(v as _$NavigationEventPage));

  @override
  _$NavigationEventPage get _value => super._value as _$NavigationEventPage;

  @override
  $Res call({
    Object? route = freezed,
    Object? replaceAll = freezed,
  }) {
    return _then(_$NavigationEventPage(
      route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      replaceAll == freezed
          ? _value.replaceAll
          : replaceAll // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NavigationEventPage implements NavigationEventPage {
  const _$NavigationEventPage(this.route, this.replaceAll);

  @override
  final String route;
  @override
  final bool replaceAll;

  @override
  String toString() {
    return 'NavigationEvent.page(route: $route, replaceAll: $replaceAll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationEventPage &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality()
                .equals(other.replaceAll, replaceAll));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(replaceAll));

  @JsonKey(ignore: true)
  @override
  _$$NavigationEventPageCopyWith<_$NavigationEventPage> get copyWith =>
      __$$NavigationEventPageCopyWithImpl<_$NavigationEventPage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String route, bool replaceAll) page,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) {
    return page(route, replaceAll);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, bool replaceAll)? page,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) {
    return page?.call(route, replaceAll);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, bool replaceAll)? page,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(route, replaceAll);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationEventPage value) page,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) {
    return page(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationEventPage value)? page,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) {
    return page?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationEventPage value)? page,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(this);
    }
    return orElse();
  }
}

abstract class NavigationEventPage implements NavigationEvent {
  const factory NavigationEventPage(final String route, final bool replaceAll) =
      _$NavigationEventPage;

  String get route => throw _privateConstructorUsedError;
  bool get replaceAll => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NavigationEventPageCopyWith<_$NavigationEventPage> get copyWith =>
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
    required TResult Function(String route, bool replaceAll) page,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) {
    return pop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, bool replaceAll)? page,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) {
    return pop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, bool replaceAll)? page,
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
    required TResult Function(NavigationEventPage value) page,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationEventPage value)? page,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationEventPage value)? page,
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
    required TResult Function(String route, bool replaceAll) page,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) {
    return dialog(builder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, bool replaceAll)? page,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) {
    return dialog?.call(builder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, bool replaceAll)? page,
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
    required TResult Function(NavigationEventPage value) page,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) {
    return dialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationEventPage value)? page,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) {
    return dialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationEventPage value)? page,
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
    required TResult Function(String route, bool replaceAll) page,
    required TResult Function() pop,
    required TResult Function(WidgetBuilder builder) dialog,
    required TResult Function(SnackBar snackBar) snackbar,
  }) {
    return snackbar(snackBar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String route, bool replaceAll)? page,
    TResult Function()? pop,
    TResult Function(WidgetBuilder builder)? dialog,
    TResult Function(SnackBar snackBar)? snackbar,
  }) {
    return snackbar?.call(snackBar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, bool replaceAll)? page,
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
    required TResult Function(NavigationEventPage value) page,
    required TResult Function(NavigationEventPop value) pop,
    required TResult Function(NavigationEventDialog value) dialog,
    required TResult Function(NavigationEventSnackbar value) snackbar,
  }) {
    return snackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigationEventPage value)? page,
    TResult Function(NavigationEventPop value)? pop,
    TResult Function(NavigationEventDialog value)? dialog,
    TResult Function(NavigationEventSnackbar value)? snackbar,
  }) {
    return snackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationEventPage value)? page,
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
