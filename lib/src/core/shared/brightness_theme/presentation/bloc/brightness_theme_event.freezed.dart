// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brightness_theme_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrightnessThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentTheme,
    required TResult Function(bool isDark) saveCurrentTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentTheme,
    TResult? Function(bool isDark)? saveCurrentTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentTheme,
    TResult Function(bool isDark)? saveCurrentTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentThemeEvent value) getCurrentTheme,
    required TResult Function(SaveCurrentThemeEvent value) saveCurrentTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCurrentThemeEvent value)? getCurrentTheme,
    TResult? Function(SaveCurrentThemeEvent value)? saveCurrentTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentThemeEvent value)? getCurrentTheme,
    TResult Function(SaveCurrentThemeEvent value)? saveCurrentTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrightnessThemeEventCopyWith<$Res> {
  factory $BrightnessThemeEventCopyWith(BrightnessThemeEvent value,
          $Res Function(BrightnessThemeEvent) then) =
      _$BrightnessThemeEventCopyWithImpl<$Res, BrightnessThemeEvent>;
}

/// @nodoc
class _$BrightnessThemeEventCopyWithImpl<$Res,
        $Val extends BrightnessThemeEvent>
    implements $BrightnessThemeEventCopyWith<$Res> {
  _$BrightnessThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrightnessThemeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCurrentThemeEventImplCopyWith<$Res> {
  factory _$$GetCurrentThemeEventImplCopyWith(_$GetCurrentThemeEventImpl value,
          $Res Function(_$GetCurrentThemeEventImpl) then) =
      __$$GetCurrentThemeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentThemeEventImplCopyWithImpl<$Res>
    extends _$BrightnessThemeEventCopyWithImpl<$Res, _$GetCurrentThemeEventImpl>
    implements _$$GetCurrentThemeEventImplCopyWith<$Res> {
  __$$GetCurrentThemeEventImplCopyWithImpl(_$GetCurrentThemeEventImpl _value,
      $Res Function(_$GetCurrentThemeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrightnessThemeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCurrentThemeEventImpl implements GetCurrentThemeEvent {
  const _$GetCurrentThemeEventImpl();

  @override
  String toString() {
    return 'BrightnessThemeEvent.getCurrentTheme()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentThemeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentTheme,
    required TResult Function(bool isDark) saveCurrentTheme,
  }) {
    return getCurrentTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentTheme,
    TResult? Function(bool isDark)? saveCurrentTheme,
  }) {
    return getCurrentTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentTheme,
    TResult Function(bool isDark)? saveCurrentTheme,
    required TResult orElse(),
  }) {
    if (getCurrentTheme != null) {
      return getCurrentTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentThemeEvent value) getCurrentTheme,
    required TResult Function(SaveCurrentThemeEvent value) saveCurrentTheme,
  }) {
    return getCurrentTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCurrentThemeEvent value)? getCurrentTheme,
    TResult? Function(SaveCurrentThemeEvent value)? saveCurrentTheme,
  }) {
    return getCurrentTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentThemeEvent value)? getCurrentTheme,
    TResult Function(SaveCurrentThemeEvent value)? saveCurrentTheme,
    required TResult orElse(),
  }) {
    if (getCurrentTheme != null) {
      return getCurrentTheme(this);
    }
    return orElse();
  }
}

abstract class GetCurrentThemeEvent implements BrightnessThemeEvent {
  const factory GetCurrentThemeEvent() = _$GetCurrentThemeEventImpl;
}

/// @nodoc
abstract class _$$SaveCurrentThemeEventImplCopyWith<$Res> {
  factory _$$SaveCurrentThemeEventImplCopyWith(
          _$SaveCurrentThemeEventImpl value,
          $Res Function(_$SaveCurrentThemeEventImpl) then) =
      __$$SaveCurrentThemeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$SaveCurrentThemeEventImplCopyWithImpl<$Res>
    extends _$BrightnessThemeEventCopyWithImpl<$Res,
        _$SaveCurrentThemeEventImpl>
    implements _$$SaveCurrentThemeEventImplCopyWith<$Res> {
  __$$SaveCurrentThemeEventImplCopyWithImpl(_$SaveCurrentThemeEventImpl _value,
      $Res Function(_$SaveCurrentThemeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrightnessThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$SaveCurrentThemeEventImpl(
      null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SaveCurrentThemeEventImpl implements SaveCurrentThemeEvent {
  const _$SaveCurrentThemeEventImpl(this.isDark);

  @override
  final bool isDark;

  @override
  String toString() {
    return 'BrightnessThemeEvent.saveCurrentTheme(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCurrentThemeEventImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  /// Create a copy of BrightnessThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCurrentThemeEventImplCopyWith<_$SaveCurrentThemeEventImpl>
      get copyWith => __$$SaveCurrentThemeEventImplCopyWithImpl<
          _$SaveCurrentThemeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentTheme,
    required TResult Function(bool isDark) saveCurrentTheme,
  }) {
    return saveCurrentTheme(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentTheme,
    TResult? Function(bool isDark)? saveCurrentTheme,
  }) {
    return saveCurrentTheme?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentTheme,
    TResult Function(bool isDark)? saveCurrentTheme,
    required TResult orElse(),
  }) {
    if (saveCurrentTheme != null) {
      return saveCurrentTheme(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentThemeEvent value) getCurrentTheme,
    required TResult Function(SaveCurrentThemeEvent value) saveCurrentTheme,
  }) {
    return saveCurrentTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCurrentThemeEvent value)? getCurrentTheme,
    TResult? Function(SaveCurrentThemeEvent value)? saveCurrentTheme,
  }) {
    return saveCurrentTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentThemeEvent value)? getCurrentTheme,
    TResult Function(SaveCurrentThemeEvent value)? saveCurrentTheme,
    required TResult orElse(),
  }) {
    if (saveCurrentTheme != null) {
      return saveCurrentTheme(this);
    }
    return orElse();
  }
}

abstract class SaveCurrentThemeEvent implements BrightnessThemeEvent {
  const factory SaveCurrentThemeEvent(final bool isDark) =
      _$SaveCurrentThemeEventImpl;

  bool get isDark;

  /// Create a copy of BrightnessThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveCurrentThemeEventImplCopyWith<_$SaveCurrentThemeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
