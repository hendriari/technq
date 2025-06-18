// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFakultas,
    required TResult Function() getReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFakultas,
    TResult? Function()? getReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFakultas,
    TResult Function()? getReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFakultasEvent value) getFakultas,
    required TResult Function(GetReviewEvent value) getReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFakultasEvent value)? getFakultas,
    TResult? Function(GetReviewEvent value)? getReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFakultasEvent value)? getFakultas,
    TResult Function(GetReviewEvent value)? getReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetFakultasEventImplCopyWith<$Res> {
  factory _$$GetFakultasEventImplCopyWith(_$GetFakultasEventImpl value,
          $Res Function(_$GetFakultasEventImpl) then) =
      __$$GetFakultasEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFakultasEventImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetFakultasEventImpl>
    implements _$$GetFakultasEventImplCopyWith<$Res> {
  __$$GetFakultasEventImplCopyWithImpl(_$GetFakultasEventImpl _value,
      $Res Function(_$GetFakultasEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFakultasEventImpl implements GetFakultasEvent {
  const _$GetFakultasEventImpl();

  @override
  String toString() {
    return 'DashboardEvent.getFakultas()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFakultasEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFakultas,
    required TResult Function() getReview,
  }) {
    return getFakultas();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFakultas,
    TResult? Function()? getReview,
  }) {
    return getFakultas?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFakultas,
    TResult Function()? getReview,
    required TResult orElse(),
  }) {
    if (getFakultas != null) {
      return getFakultas();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFakultasEvent value) getFakultas,
    required TResult Function(GetReviewEvent value) getReview,
  }) {
    return getFakultas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFakultasEvent value)? getFakultas,
    TResult? Function(GetReviewEvent value)? getReview,
  }) {
    return getFakultas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFakultasEvent value)? getFakultas,
    TResult Function(GetReviewEvent value)? getReview,
    required TResult orElse(),
  }) {
    if (getFakultas != null) {
      return getFakultas(this);
    }
    return orElse();
  }
}

abstract class GetFakultasEvent implements DashboardEvent {
  const factory GetFakultasEvent() = _$GetFakultasEventImpl;
}

/// @nodoc
abstract class _$$GetReviewEventImplCopyWith<$Res> {
  factory _$$GetReviewEventImplCopyWith(_$GetReviewEventImpl value,
          $Res Function(_$GetReviewEventImpl) then) =
      __$$GetReviewEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetReviewEventImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetReviewEventImpl>
    implements _$$GetReviewEventImplCopyWith<$Res> {
  __$$GetReviewEventImplCopyWithImpl(
      _$GetReviewEventImpl _value, $Res Function(_$GetReviewEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetReviewEventImpl implements GetReviewEvent {
  const _$GetReviewEventImpl();

  @override
  String toString() {
    return 'DashboardEvent.getReview()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetReviewEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFakultas,
    required TResult Function() getReview,
  }) {
    return getReview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFakultas,
    TResult? Function()? getReview,
  }) {
    return getReview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFakultas,
    TResult Function()? getReview,
    required TResult orElse(),
  }) {
    if (getReview != null) {
      return getReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFakultasEvent value) getFakultas,
    required TResult Function(GetReviewEvent value) getReview,
  }) {
    return getReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFakultasEvent value)? getFakultas,
    TResult? Function(GetReviewEvent value)? getReview,
  }) {
    return getReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFakultasEvent value)? getFakultas,
    TResult Function(GetReviewEvent value)? getReview,
    required TResult orElse(),
  }) {
    if (getReview != null) {
      return getReview(this);
    }
    return orElse();
  }
}

abstract class GetReviewEvent implements DashboardEvent {
  const factory GetReviewEvent() = _$GetReviewEventImpl;
}
