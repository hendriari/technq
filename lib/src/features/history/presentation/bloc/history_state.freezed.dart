// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryState {
  List<AhpResultEntities>? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AhpResultEntities>? data) init,
    required TResult Function(List<AhpResultEntities>? data) loadingGetHistory,
    required TResult Function(List<AhpResultEntities>? data) successGetHistory,
    required TResult Function(List<AhpResultEntities>? data, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AhpResultEntities>? data)? init,
    TResult? Function(List<AhpResultEntities>? data)? loadingGetHistory,
    TResult? Function(List<AhpResultEntities>? data)? successGetHistory,
    TResult? Function(List<AhpResultEntities>? data, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AhpResultEntities>? data)? init,
    TResult Function(List<AhpResultEntities>? data)? loadingGetHistory,
    TResult Function(List<AhpResultEntities>? data)? successGetHistory,
    TResult Function(List<AhpResultEntities>? data, String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadingGetHistory value) loadingGetHistory,
    required TResult Function(_SuccessGetHistory value) successGetHistory,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadingGetHistory value)? loadingGetHistory,
    TResult? Function(_SuccessGetHistory value)? successGetHistory,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadingGetHistory value)? loadingGetHistory,
    TResult Function(_SuccessGetHistory value)? successGetHistory,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call({List<AhpResultEntities>? data});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AhpResultEntities>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AhpResultEntities>? data});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$InitImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AhpResultEntities>?,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl({final List<AhpResultEntities>? data = null}) : _data = data;

  final List<AhpResultEntities>? _data;
  @override
  @JsonKey()
  List<AhpResultEntities>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryState.init(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AhpResultEntities>? data) init,
    required TResult Function(List<AhpResultEntities>? data) loadingGetHistory,
    required TResult Function(List<AhpResultEntities>? data) successGetHistory,
    required TResult Function(List<AhpResultEntities>? data, String message)
        failed,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AhpResultEntities>? data)? init,
    TResult? Function(List<AhpResultEntities>? data)? loadingGetHistory,
    TResult? Function(List<AhpResultEntities>? data)? successGetHistory,
    TResult? Function(List<AhpResultEntities>? data, String message)? failed,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AhpResultEntities>? data)? init,
    TResult Function(List<AhpResultEntities>? data)? loadingGetHistory,
    TResult Function(List<AhpResultEntities>? data)? successGetHistory,
    TResult Function(List<AhpResultEntities>? data, String message)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadingGetHistory value) loadingGetHistory,
    required TResult Function(_SuccessGetHistory value) successGetHistory,
    required TResult Function(_Failed value) failed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadingGetHistory value)? loadingGetHistory,
    TResult? Function(_SuccessGetHistory value)? successGetHistory,
    TResult? Function(_Failed value)? failed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadingGetHistory value)? loadingGetHistory,
    TResult Function(_SuccessGetHistory value)? successGetHistory,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements HistoryState {
  const factory _Init({final List<AhpResultEntities>? data}) = _$InitImpl;

  @override
  List<AhpResultEntities>? get data;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingGetHistoryImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$LoadingGetHistoryImplCopyWith(_$LoadingGetHistoryImpl value,
          $Res Function(_$LoadingGetHistoryImpl) then) =
      __$$LoadingGetHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AhpResultEntities>? data});
}

/// @nodoc
class __$$LoadingGetHistoryImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$LoadingGetHistoryImpl>
    implements _$$LoadingGetHistoryImplCopyWith<$Res> {
  __$$LoadingGetHistoryImplCopyWithImpl(_$LoadingGetHistoryImpl _value,
      $Res Function(_$LoadingGetHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LoadingGetHistoryImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AhpResultEntities>?,
    ));
  }
}

/// @nodoc

class _$LoadingGetHistoryImpl implements _LoadingGetHistory {
  const _$LoadingGetHistoryImpl({final List<AhpResultEntities>? data = null})
      : _data = data;

  final List<AhpResultEntities>? _data;
  @override
  @JsonKey()
  List<AhpResultEntities>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryState.loadingGetHistory(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingGetHistoryImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingGetHistoryImplCopyWith<_$LoadingGetHistoryImpl> get copyWith =>
      __$$LoadingGetHistoryImplCopyWithImpl<_$LoadingGetHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AhpResultEntities>? data) init,
    required TResult Function(List<AhpResultEntities>? data) loadingGetHistory,
    required TResult Function(List<AhpResultEntities>? data) successGetHistory,
    required TResult Function(List<AhpResultEntities>? data, String message)
        failed,
  }) {
    return loadingGetHistory(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AhpResultEntities>? data)? init,
    TResult? Function(List<AhpResultEntities>? data)? loadingGetHistory,
    TResult? Function(List<AhpResultEntities>? data)? successGetHistory,
    TResult? Function(List<AhpResultEntities>? data, String message)? failed,
  }) {
    return loadingGetHistory?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AhpResultEntities>? data)? init,
    TResult Function(List<AhpResultEntities>? data)? loadingGetHistory,
    TResult Function(List<AhpResultEntities>? data)? successGetHistory,
    TResult Function(List<AhpResultEntities>? data, String message)? failed,
    required TResult orElse(),
  }) {
    if (loadingGetHistory != null) {
      return loadingGetHistory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadingGetHistory value) loadingGetHistory,
    required TResult Function(_SuccessGetHistory value) successGetHistory,
    required TResult Function(_Failed value) failed,
  }) {
    return loadingGetHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadingGetHistory value)? loadingGetHistory,
    TResult? Function(_SuccessGetHistory value)? successGetHistory,
    TResult? Function(_Failed value)? failed,
  }) {
    return loadingGetHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadingGetHistory value)? loadingGetHistory,
    TResult Function(_SuccessGetHistory value)? successGetHistory,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loadingGetHistory != null) {
      return loadingGetHistory(this);
    }
    return orElse();
  }
}

abstract class _LoadingGetHistory implements HistoryState {
  const factory _LoadingGetHistory({final List<AhpResultEntities>? data}) =
      _$LoadingGetHistoryImpl;

  @override
  List<AhpResultEntities>? get data;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingGetHistoryImplCopyWith<_$LoadingGetHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessGetHistoryImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$SuccessGetHistoryImplCopyWith(_$SuccessGetHistoryImpl value,
          $Res Function(_$SuccessGetHistoryImpl) then) =
      __$$SuccessGetHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AhpResultEntities>? data});
}

/// @nodoc
class __$$SuccessGetHistoryImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$SuccessGetHistoryImpl>
    implements _$$SuccessGetHistoryImplCopyWith<$Res> {
  __$$SuccessGetHistoryImplCopyWithImpl(_$SuccessGetHistoryImpl _value,
      $Res Function(_$SuccessGetHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessGetHistoryImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AhpResultEntities>?,
    ));
  }
}

/// @nodoc

class _$SuccessGetHistoryImpl implements _SuccessGetHistory {
  const _$SuccessGetHistoryImpl({final List<AhpResultEntities>? data = null})
      : _data = data;

  final List<AhpResultEntities>? _data;
  @override
  @JsonKey()
  List<AhpResultEntities>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryState.successGetHistory(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessGetHistoryImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessGetHistoryImplCopyWith<_$SuccessGetHistoryImpl> get copyWith =>
      __$$SuccessGetHistoryImplCopyWithImpl<_$SuccessGetHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AhpResultEntities>? data) init,
    required TResult Function(List<AhpResultEntities>? data) loadingGetHistory,
    required TResult Function(List<AhpResultEntities>? data) successGetHistory,
    required TResult Function(List<AhpResultEntities>? data, String message)
        failed,
  }) {
    return successGetHistory(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AhpResultEntities>? data)? init,
    TResult? Function(List<AhpResultEntities>? data)? loadingGetHistory,
    TResult? Function(List<AhpResultEntities>? data)? successGetHistory,
    TResult? Function(List<AhpResultEntities>? data, String message)? failed,
  }) {
    return successGetHistory?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AhpResultEntities>? data)? init,
    TResult Function(List<AhpResultEntities>? data)? loadingGetHistory,
    TResult Function(List<AhpResultEntities>? data)? successGetHistory,
    TResult Function(List<AhpResultEntities>? data, String message)? failed,
    required TResult orElse(),
  }) {
    if (successGetHistory != null) {
      return successGetHistory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadingGetHistory value) loadingGetHistory,
    required TResult Function(_SuccessGetHistory value) successGetHistory,
    required TResult Function(_Failed value) failed,
  }) {
    return successGetHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadingGetHistory value)? loadingGetHistory,
    TResult? Function(_SuccessGetHistory value)? successGetHistory,
    TResult? Function(_Failed value)? failed,
  }) {
    return successGetHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadingGetHistory value)? loadingGetHistory,
    TResult Function(_SuccessGetHistory value)? successGetHistory,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (successGetHistory != null) {
      return successGetHistory(this);
    }
    return orElse();
  }
}

abstract class _SuccessGetHistory implements HistoryState {
  const factory _SuccessGetHistory({final List<AhpResultEntities>? data}) =
      _$SuccessGetHistoryImpl;

  @override
  List<AhpResultEntities>? get data;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessGetHistoryImplCopyWith<_$SuccessGetHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AhpResultEntities>? data, String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AhpResultEntities>?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(
      {final List<AhpResultEntities>? data = null, required this.message})
      : _data = data;

  final List<AhpResultEntities>? _data;
  @override
  @JsonKey()
  List<AhpResultEntities>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'HistoryState.failed(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AhpResultEntities>? data) init,
    required TResult Function(List<AhpResultEntities>? data) loadingGetHistory,
    required TResult Function(List<AhpResultEntities>? data) successGetHistory,
    required TResult Function(List<AhpResultEntities>? data, String message)
        failed,
  }) {
    return failed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AhpResultEntities>? data)? init,
    TResult? Function(List<AhpResultEntities>? data)? loadingGetHistory,
    TResult? Function(List<AhpResultEntities>? data)? successGetHistory,
    TResult? Function(List<AhpResultEntities>? data, String message)? failed,
  }) {
    return failed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AhpResultEntities>? data)? init,
    TResult Function(List<AhpResultEntities>? data)? loadingGetHistory,
    TResult Function(List<AhpResultEntities>? data)? successGetHistory,
    TResult Function(List<AhpResultEntities>? data, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadingGetHistory value) loadingGetHistory,
    required TResult Function(_SuccessGetHistory value) successGetHistory,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadingGetHistory value)? loadingGetHistory,
    TResult? Function(_SuccessGetHistory value)? successGetHistory,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadingGetHistory value)? loadingGetHistory,
    TResult Function(_SuccessGetHistory value)? successGetHistory,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements HistoryState {
  const factory _Failed(
      {final List<AhpResultEntities>? data,
      required final String message}) = _$FailedImpl;

  @override
  List<AhpResultEntities>? get data;
  String get message;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
