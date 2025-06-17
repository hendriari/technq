// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brightness_theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrightnessThemeState {
  bool? get isDark => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isDark) init,
    required TResult Function(bool? isDark) loadedBrightness,
    required TResult Function(bool? isDark) changedBrightness,
    required TResult Function(bool? isDark, String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isDark)? init,
    TResult? Function(bool? isDark)? loadedBrightness,
    TResult? Function(bool? isDark)? changedBrightness,
    TResult? Function(bool? isDark, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isDark)? init,
    TResult Function(bool? isDark)? loadedBrightness,
    TResult Function(bool? isDark)? changedBrightness,
    TResult Function(bool? isDark, String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadedBrightness value) loadedBrightness,
    required TResult Function(_ChangedBrightness value) changedBrightness,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadedBrightness value)? loadedBrightness,
    TResult? Function(_ChangedBrightness value)? changedBrightness,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadedBrightness value)? loadedBrightness,
    TResult Function(_ChangedBrightness value)? changedBrightness,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrightnessThemeStateCopyWith<BrightnessThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrightnessThemeStateCopyWith<$Res> {
  factory $BrightnessThemeStateCopyWith(BrightnessThemeState value,
          $Res Function(BrightnessThemeState) then) =
      _$BrightnessThemeStateCopyWithImpl<$Res, BrightnessThemeState>;
  @useResult
  $Res call({bool? isDark});
}

/// @nodoc
class _$BrightnessThemeStateCopyWithImpl<$Res,
        $Val extends BrightnessThemeState>
    implements $BrightnessThemeStateCopyWith<$Res> {
  _$BrightnessThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = freezed,
  }) {
    return _then(_value.copyWith(
      isDark: freezed == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res>
    implements $BrightnessThemeStateCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isDark});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$BrightnessThemeStateCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = freezed,
  }) {
    return _then(_$InitImpl(
      isDark: freezed == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl({this.isDark = null});

  @override
  @JsonKey()
  final bool? isDark;

  @override
  String toString() {
    return 'BrightnessThemeState.init(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isDark) init,
    required TResult Function(bool? isDark) loadedBrightness,
    required TResult Function(bool? isDark) changedBrightness,
    required TResult Function(bool? isDark, String message) failed,
  }) {
    return init(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isDark)? init,
    TResult? Function(bool? isDark)? loadedBrightness,
    TResult? Function(bool? isDark)? changedBrightness,
    TResult? Function(bool? isDark, String message)? failed,
  }) {
    return init?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isDark)? init,
    TResult Function(bool? isDark)? loadedBrightness,
    TResult Function(bool? isDark)? changedBrightness,
    TResult Function(bool? isDark, String message)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadedBrightness value) loadedBrightness,
    required TResult Function(_ChangedBrightness value) changedBrightness,
    required TResult Function(_Failed value) failed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadedBrightness value)? loadedBrightness,
    TResult? Function(_ChangedBrightness value)? changedBrightness,
    TResult? Function(_Failed value)? failed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadedBrightness value)? loadedBrightness,
    TResult Function(_ChangedBrightness value)? changedBrightness,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements BrightnessThemeState {
  const factory _Init({final bool? isDark}) = _$InitImpl;

  @override
  bool? get isDark;

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedBrightnessImplCopyWith<$Res>
    implements $BrightnessThemeStateCopyWith<$Res> {
  factory _$$LoadedBrightnessImplCopyWith(_$LoadedBrightnessImpl value,
          $Res Function(_$LoadedBrightnessImpl) then) =
      __$$LoadedBrightnessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isDark});
}

/// @nodoc
class __$$LoadedBrightnessImplCopyWithImpl<$Res>
    extends _$BrightnessThemeStateCopyWithImpl<$Res, _$LoadedBrightnessImpl>
    implements _$$LoadedBrightnessImplCopyWith<$Res> {
  __$$LoadedBrightnessImplCopyWithImpl(_$LoadedBrightnessImpl _value,
      $Res Function(_$LoadedBrightnessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = freezed,
  }) {
    return _then(_$LoadedBrightnessImpl(
      isDark: freezed == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadedBrightnessImpl implements _LoadedBrightness {
  const _$LoadedBrightnessImpl({this.isDark = null});

  @override
  @JsonKey()
  final bool? isDark;

  @override
  String toString() {
    return 'BrightnessThemeState.loadedBrightness(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedBrightnessImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedBrightnessImplCopyWith<_$LoadedBrightnessImpl> get copyWith =>
      __$$LoadedBrightnessImplCopyWithImpl<_$LoadedBrightnessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isDark) init,
    required TResult Function(bool? isDark) loadedBrightness,
    required TResult Function(bool? isDark) changedBrightness,
    required TResult Function(bool? isDark, String message) failed,
  }) {
    return loadedBrightness(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isDark)? init,
    TResult? Function(bool? isDark)? loadedBrightness,
    TResult? Function(bool? isDark)? changedBrightness,
    TResult? Function(bool? isDark, String message)? failed,
  }) {
    return loadedBrightness?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isDark)? init,
    TResult Function(bool? isDark)? loadedBrightness,
    TResult Function(bool? isDark)? changedBrightness,
    TResult Function(bool? isDark, String message)? failed,
    required TResult orElse(),
  }) {
    if (loadedBrightness != null) {
      return loadedBrightness(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadedBrightness value) loadedBrightness,
    required TResult Function(_ChangedBrightness value) changedBrightness,
    required TResult Function(_Failed value) failed,
  }) {
    return loadedBrightness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadedBrightness value)? loadedBrightness,
    TResult? Function(_ChangedBrightness value)? changedBrightness,
    TResult? Function(_Failed value)? failed,
  }) {
    return loadedBrightness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadedBrightness value)? loadedBrightness,
    TResult Function(_ChangedBrightness value)? changedBrightness,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loadedBrightness != null) {
      return loadedBrightness(this);
    }
    return orElse();
  }
}

abstract class _LoadedBrightness implements BrightnessThemeState {
  const factory _LoadedBrightness({final bool? isDark}) =
      _$LoadedBrightnessImpl;

  @override
  bool? get isDark;

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedBrightnessImplCopyWith<_$LoadedBrightnessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedBrightnessImplCopyWith<$Res>
    implements $BrightnessThemeStateCopyWith<$Res> {
  factory _$$ChangedBrightnessImplCopyWith(_$ChangedBrightnessImpl value,
          $Res Function(_$ChangedBrightnessImpl) then) =
      __$$ChangedBrightnessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isDark});
}

/// @nodoc
class __$$ChangedBrightnessImplCopyWithImpl<$Res>
    extends _$BrightnessThemeStateCopyWithImpl<$Res, _$ChangedBrightnessImpl>
    implements _$$ChangedBrightnessImplCopyWith<$Res> {
  __$$ChangedBrightnessImplCopyWithImpl(_$ChangedBrightnessImpl _value,
      $Res Function(_$ChangedBrightnessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = freezed,
  }) {
    return _then(_$ChangedBrightnessImpl(
      isDark: freezed == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ChangedBrightnessImpl implements _ChangedBrightness {
  const _$ChangedBrightnessImpl({this.isDark = null});

  @override
  @JsonKey()
  final bool? isDark;

  @override
  String toString() {
    return 'BrightnessThemeState.changedBrightness(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedBrightnessImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedBrightnessImplCopyWith<_$ChangedBrightnessImpl> get copyWith =>
      __$$ChangedBrightnessImplCopyWithImpl<_$ChangedBrightnessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isDark) init,
    required TResult Function(bool? isDark) loadedBrightness,
    required TResult Function(bool? isDark) changedBrightness,
    required TResult Function(bool? isDark, String message) failed,
  }) {
    return changedBrightness(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isDark)? init,
    TResult? Function(bool? isDark)? loadedBrightness,
    TResult? Function(bool? isDark)? changedBrightness,
    TResult? Function(bool? isDark, String message)? failed,
  }) {
    return changedBrightness?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isDark)? init,
    TResult Function(bool? isDark)? loadedBrightness,
    TResult Function(bool? isDark)? changedBrightness,
    TResult Function(bool? isDark, String message)? failed,
    required TResult orElse(),
  }) {
    if (changedBrightness != null) {
      return changedBrightness(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadedBrightness value) loadedBrightness,
    required TResult Function(_ChangedBrightness value) changedBrightness,
    required TResult Function(_Failed value) failed,
  }) {
    return changedBrightness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadedBrightness value)? loadedBrightness,
    TResult? Function(_ChangedBrightness value)? changedBrightness,
    TResult? Function(_Failed value)? failed,
  }) {
    return changedBrightness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadedBrightness value)? loadedBrightness,
    TResult Function(_ChangedBrightness value)? changedBrightness,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (changedBrightness != null) {
      return changedBrightness(this);
    }
    return orElse();
  }
}

abstract class _ChangedBrightness implements BrightnessThemeState {
  const factory _ChangedBrightness({final bool? isDark}) =
      _$ChangedBrightnessImpl;

  @override
  bool? get isDark;

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangedBrightnessImplCopyWith<_$ChangedBrightnessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $BrightnessThemeStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isDark, String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$BrightnessThemeStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = freezed,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      isDark: freezed == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({this.isDark = null, required this.message});

  @override
  @JsonKey()
  final bool? isDark;
  @override
  final String message;

  @override
  String toString() {
    return 'BrightnessThemeState.failed(isDark: $isDark, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark, message);

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isDark) init,
    required TResult Function(bool? isDark) loadedBrightness,
    required TResult Function(bool? isDark) changedBrightness,
    required TResult Function(bool? isDark, String message) failed,
  }) {
    return failed(isDark, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isDark)? init,
    TResult? Function(bool? isDark)? loadedBrightness,
    TResult? Function(bool? isDark)? changedBrightness,
    TResult? Function(bool? isDark, String message)? failed,
  }) {
    return failed?.call(isDark, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isDark)? init,
    TResult Function(bool? isDark)? loadedBrightness,
    TResult Function(bool? isDark)? changedBrightness,
    TResult Function(bool? isDark, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(isDark, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadedBrightness value) loadedBrightness,
    required TResult Function(_ChangedBrightness value) changedBrightness,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadedBrightness value)? loadedBrightness,
    TResult? Function(_ChangedBrightness value)? changedBrightness,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadedBrightness value)? loadedBrightness,
    TResult Function(_ChangedBrightness value)? changedBrightness,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements BrightnessThemeState {
  const factory _Failed({final bool? isDark, required final String message}) =
      _$FailedImpl;

  @override
  bool? get isDark;
  String get message;

  /// Create a copy of BrightnessThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
