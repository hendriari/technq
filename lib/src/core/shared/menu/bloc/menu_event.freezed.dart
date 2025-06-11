// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, dynamic e) changeIndexMenuEvent,
    required TResult Function() exitAppEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, dynamic e)? changeIndexMenuEvent,
    TResult? Function()? exitAppEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, dynamic e)? changeIndexMenuEvent,
    TResult Function()? exitAppEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeIndexMenuEvent value) changeIndexMenuEvent,
    required TResult Function(ExitAppEvent value) exitAppEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeIndexMenuEvent value)? changeIndexMenuEvent,
    TResult? Function(ExitAppEvent value)? exitAppEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeIndexMenuEvent value)? changeIndexMenuEvent,
    TResult Function(ExitAppEvent value)? exitAppEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res, MenuEvent>;
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res, $Val extends MenuEvent>
    implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeIndexMenuEventImplCopyWith<$Res> {
  factory _$$ChangeIndexMenuEventImplCopyWith(_$ChangeIndexMenuEventImpl value,
          $Res Function(_$ChangeIndexMenuEventImpl) then) =
      __$$ChangeIndexMenuEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, dynamic e});
}

/// @nodoc
class __$$ChangeIndexMenuEventImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$ChangeIndexMenuEventImpl>
    implements _$$ChangeIndexMenuEventImplCopyWith<$Res> {
  __$$ChangeIndexMenuEventImplCopyWithImpl(_$ChangeIndexMenuEventImpl _value,
      $Res Function(_$ChangeIndexMenuEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? e = freezed,
  }) {
    return _then(_$ChangeIndexMenuEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      e: freezed == e ? _value.e! : e,
    ));
  }
}

/// @nodoc

class _$ChangeIndexMenuEventImpl implements ChangeIndexMenuEvent {
  const _$ChangeIndexMenuEventImpl({required this.index, this.e});

  @override
  final int index;
  @override
  final dynamic e;

  @override
  String toString() {
    return 'MenuEvent.changeIndexMenuEvent(index: $index, e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIndexMenuEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, index, const DeepCollectionEquality().hash(e));

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIndexMenuEventImplCopyWith<_$ChangeIndexMenuEventImpl>
      get copyWith =>
          __$$ChangeIndexMenuEventImplCopyWithImpl<_$ChangeIndexMenuEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, dynamic e) changeIndexMenuEvent,
    required TResult Function() exitAppEvent,
  }) {
    return changeIndexMenuEvent(index, e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, dynamic e)? changeIndexMenuEvent,
    TResult? Function()? exitAppEvent,
  }) {
    return changeIndexMenuEvent?.call(index, e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, dynamic e)? changeIndexMenuEvent,
    TResult Function()? exitAppEvent,
    required TResult orElse(),
  }) {
    if (changeIndexMenuEvent != null) {
      return changeIndexMenuEvent(index, e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeIndexMenuEvent value) changeIndexMenuEvent,
    required TResult Function(ExitAppEvent value) exitAppEvent,
  }) {
    return changeIndexMenuEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeIndexMenuEvent value)? changeIndexMenuEvent,
    TResult? Function(ExitAppEvent value)? exitAppEvent,
  }) {
    return changeIndexMenuEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeIndexMenuEvent value)? changeIndexMenuEvent,
    TResult Function(ExitAppEvent value)? exitAppEvent,
    required TResult orElse(),
  }) {
    if (changeIndexMenuEvent != null) {
      return changeIndexMenuEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeIndexMenuEvent implements MenuEvent {
  const factory ChangeIndexMenuEvent(
      {required final int index, final dynamic e}) = _$ChangeIndexMenuEventImpl;

  int get index;
  dynamic get e;

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeIndexMenuEventImplCopyWith<_$ChangeIndexMenuEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExitAppEventImplCopyWith<$Res> {
  factory _$$ExitAppEventImplCopyWith(
          _$ExitAppEventImpl value, $Res Function(_$ExitAppEventImpl) then) =
      __$$ExitAppEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitAppEventImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$ExitAppEventImpl>
    implements _$$ExitAppEventImplCopyWith<$Res> {
  __$$ExitAppEventImplCopyWithImpl(
      _$ExitAppEventImpl _value, $Res Function(_$ExitAppEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExitAppEventImpl implements ExitAppEvent {
  const _$ExitAppEventImpl();

  @override
  String toString() {
    return 'MenuEvent.exitAppEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitAppEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, dynamic e) changeIndexMenuEvent,
    required TResult Function() exitAppEvent,
  }) {
    return exitAppEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, dynamic e)? changeIndexMenuEvent,
    TResult? Function()? exitAppEvent,
  }) {
    return exitAppEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, dynamic e)? changeIndexMenuEvent,
    TResult Function()? exitAppEvent,
    required TResult orElse(),
  }) {
    if (exitAppEvent != null) {
      return exitAppEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeIndexMenuEvent value) changeIndexMenuEvent,
    required TResult Function(ExitAppEvent value) exitAppEvent,
  }) {
    return exitAppEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeIndexMenuEvent value)? changeIndexMenuEvent,
    TResult? Function(ExitAppEvent value)? exitAppEvent,
  }) {
    return exitAppEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeIndexMenuEvent value)? changeIndexMenuEvent,
    TResult Function(ExitAppEvent value)? exitAppEvent,
    required TResult orElse(),
  }) {
    if (exitAppEvent != null) {
      return exitAppEvent(this);
    }
    return orElse();
  }
}

abstract class ExitAppEvent implements MenuEvent {
  const factory ExitAppEvent() = _$ExitAppEventImpl;
}
