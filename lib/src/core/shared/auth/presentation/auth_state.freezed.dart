// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  UserEntities? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(
            UserEntities? user, bool isAuthenticated, String message)
        failedCheckToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated, String message)?
        failedCheckToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated, String message)?
        failedCheckToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_FailedCheckToken value) failedCheckToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_FailedCheckToken value)? failedCheckToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_FailedCheckToken value)? failedCheckToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({UserEntities? user});

  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntitiesCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntitiesCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$InitImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl({this.user = null});

  @override
  @JsonKey()
  final UserEntities? user;

  @override
  String toString() {
    return 'AuthState.initial(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(
            UserEntities? user, bool isAuthenticated, String message)
        failedCheckToken,
  }) {
    return initial(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated, String message)?
        failedCheckToken,
  }) {
    return initial?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated, String message)?
        failedCheckToken,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_FailedCheckToken value) failedCheckToken,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_FailedCheckToken value)? failedCheckToken,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_FailedCheckToken value)? failedCheckToken,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Init implements AuthState {
  const factory _Init({final UserEntities? user}) = _$InitImpl;

  @override
  UserEntities? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCheckTokenImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoadingCheckTokenImplCopyWith(_$LoadingCheckTokenImpl value,
          $Res Function(_$LoadingCheckTokenImpl) then) =
      __$$LoadingCheckTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoadingCheckTokenImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingCheckTokenImpl>
    implements _$$LoadingCheckTokenImplCopyWith<$Res> {
  __$$LoadingCheckTokenImplCopyWithImpl(_$LoadingCheckTokenImpl _value,
      $Res Function(_$LoadingCheckTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$LoadingCheckTokenImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
    ));
  }
}

/// @nodoc

class _$LoadingCheckTokenImpl implements _LoadingCheckToken {
  const _$LoadingCheckTokenImpl({this.user = null});

  @override
  @JsonKey()
  final UserEntities? user;

  @override
  String toString() {
    return 'AuthState.loadingCheckToken(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCheckTokenImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingCheckTokenImplCopyWith<_$LoadingCheckTokenImpl> get copyWith =>
      __$$LoadingCheckTokenImplCopyWithImpl<_$LoadingCheckTokenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(
            UserEntities? user, bool isAuthenticated, String message)
        failedCheckToken,
  }) {
    return loadingCheckToken(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated, String message)?
        failedCheckToken,
  }) {
    return loadingCheckToken?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated, String message)?
        failedCheckToken,
    required TResult orElse(),
  }) {
    if (loadingCheckToken != null) {
      return loadingCheckToken(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_FailedCheckToken value) failedCheckToken,
  }) {
    return loadingCheckToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_FailedCheckToken value)? failedCheckToken,
  }) {
    return loadingCheckToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_FailedCheckToken value)? failedCheckToken,
    required TResult orElse(),
  }) {
    if (loadingCheckToken != null) {
      return loadingCheckToken(this);
    }
    return orElse();
  }
}

abstract class _LoadingCheckToken implements AuthState {
  const factory _LoadingCheckToken({final UserEntities? user}) =
      _$LoadingCheckTokenImpl;

  @override
  UserEntities? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingCheckTokenImplCopyWith<_$LoadingCheckTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCheckTokenImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$SuccessCheckTokenImplCopyWith(_$SuccessCheckTokenImpl value,
          $Res Function(_$SuccessCheckTokenImpl) then) =
      __$$SuccessCheckTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user, bool isAuthenticated});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SuccessCheckTokenImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessCheckTokenImpl>
    implements _$$SuccessCheckTokenImplCopyWith<$Res> {
  __$$SuccessCheckTokenImplCopyWithImpl(_$SuccessCheckTokenImpl _value,
      $Res Function(_$SuccessCheckTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isAuthenticated = null,
  }) {
    return _then(_$SuccessCheckTokenImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessCheckTokenImpl implements _SuccessCheckToken {
  const _$SuccessCheckTokenImpl(
      {this.user = null, required this.isAuthenticated});

  @override
  @JsonKey()
  final UserEntities? user;
  @override
  final bool isAuthenticated;

  @override
  String toString() {
    return 'AuthState.successCheckToken(user: $user, isAuthenticated: $isAuthenticated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCheckTokenImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isAuthenticated);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCheckTokenImplCopyWith<_$SuccessCheckTokenImpl> get copyWith =>
      __$$SuccessCheckTokenImplCopyWithImpl<_$SuccessCheckTokenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(
            UserEntities? user, bool isAuthenticated, String message)
        failedCheckToken,
  }) {
    return successCheckToken(user, isAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated, String message)?
        failedCheckToken,
  }) {
    return successCheckToken?.call(user, isAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated, String message)?
        failedCheckToken,
    required TResult orElse(),
  }) {
    if (successCheckToken != null) {
      return successCheckToken(user, isAuthenticated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_FailedCheckToken value) failedCheckToken,
  }) {
    return successCheckToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_FailedCheckToken value)? failedCheckToken,
  }) {
    return successCheckToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_FailedCheckToken value)? failedCheckToken,
    required TResult orElse(),
  }) {
    if (successCheckToken != null) {
      return successCheckToken(this);
    }
    return orElse();
  }
}

abstract class _SuccessCheckToken implements AuthState {
  const factory _SuccessCheckToken(
      {final UserEntities? user,
      required final bool isAuthenticated}) = _$SuccessCheckTokenImpl;

  @override
  UserEntities? get user;
  bool get isAuthenticated;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCheckTokenImplCopyWith<_$SuccessCheckTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedCheckTokenImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$FailedCheckTokenImplCopyWith(_$FailedCheckTokenImpl value,
          $Res Function(_$FailedCheckTokenImpl) then) =
      __$$FailedCheckTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user, bool isAuthenticated, String message});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$FailedCheckTokenImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailedCheckTokenImpl>
    implements _$$FailedCheckTokenImplCopyWith<$Res> {
  __$$FailedCheckTokenImplCopyWithImpl(_$FailedCheckTokenImpl _value,
      $Res Function(_$FailedCheckTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isAuthenticated = null,
    Object? message = null,
  }) {
    return _then(_$FailedCheckTokenImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedCheckTokenImpl implements _FailedCheckToken {
  const _$FailedCheckTokenImpl(
      {this.user = null, required this.isAuthenticated, required this.message});

  @override
  @JsonKey()
  final UserEntities? user;
  @override
  final bool isAuthenticated;
  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failedCheckToken(user: $user, isAuthenticated: $isAuthenticated, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedCheckTokenImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isAuthenticated, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedCheckTokenImplCopyWith<_$FailedCheckTokenImpl> get copyWith =>
      __$$FailedCheckTokenImplCopyWithImpl<_$FailedCheckTokenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(
            UserEntities? user, bool isAuthenticated, String message)
        failedCheckToken,
  }) {
    return failedCheckToken(user, isAuthenticated, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated, String message)?
        failedCheckToken,
  }) {
    return failedCheckToken?.call(user, isAuthenticated, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated, String message)?
        failedCheckToken,
    required TResult orElse(),
  }) {
    if (failedCheckToken != null) {
      return failedCheckToken(user, isAuthenticated, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_FailedCheckToken value) failedCheckToken,
  }) {
    return failedCheckToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_FailedCheckToken value)? failedCheckToken,
  }) {
    return failedCheckToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_FailedCheckToken value)? failedCheckToken,
    required TResult orElse(),
  }) {
    if (failedCheckToken != null) {
      return failedCheckToken(this);
    }
    return orElse();
  }
}

abstract class _FailedCheckToken implements AuthState {
  const factory _FailedCheckToken(
      {final UserEntities? user,
      required final bool isAuthenticated,
      required final String message}) = _$FailedCheckTokenImpl;

  @override
  UserEntities? get user;
  bool get isAuthenticated;
  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedCheckTokenImplCopyWith<_$FailedCheckTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
