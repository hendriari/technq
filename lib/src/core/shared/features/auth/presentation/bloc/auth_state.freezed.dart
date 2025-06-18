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
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
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
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
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
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
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
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
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
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
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
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
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
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
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
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
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
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) {
    return loadingCheckToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) {
    return loadingCheckToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
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
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
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
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
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
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
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
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) {
    return successCheckToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) {
    return successCheckToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
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
abstract class _$$LoadingCreateAccountImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoadingCreateAccountImplCopyWith(_$LoadingCreateAccountImpl value,
          $Res Function(_$LoadingCreateAccountImpl) then) =
      __$$LoadingCreateAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoadingCreateAccountImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingCreateAccountImpl>
    implements _$$LoadingCreateAccountImplCopyWith<$Res> {
  __$$LoadingCreateAccountImplCopyWithImpl(_$LoadingCreateAccountImpl _value,
      $Res Function(_$LoadingCreateAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$LoadingCreateAccountImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
    ));
  }
}

/// @nodoc

class _$LoadingCreateAccountImpl implements _LoadingCreateAccount {
  const _$LoadingCreateAccountImpl({this.user = null});

  @override
  @JsonKey()
  final UserEntities? user;

  @override
  String toString() {
    return 'AuthState.loadingCreateAccount(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCreateAccountImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingCreateAccountImplCopyWith<_$LoadingCreateAccountImpl>
      get copyWith =>
          __$$LoadingCreateAccountImplCopyWithImpl<_$LoadingCreateAccountImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
  }) {
    return loadingCreateAccount(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
  }) {
    return loadingCreateAccount?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
    required TResult orElse(),
  }) {
    if (loadingCreateAccount != null) {
      return loadingCreateAccount(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) {
    return loadingCreateAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) {
    return loadingCreateAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loadingCreateAccount != null) {
      return loadingCreateAccount(this);
    }
    return orElse();
  }
}

abstract class _LoadingCreateAccount implements AuthState {
  const factory _LoadingCreateAccount({final UserEntities? user}) =
      _$LoadingCreateAccountImpl;

  @override
  UserEntities? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingCreateAccountImplCopyWith<_$LoadingCreateAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCreateAccountImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$SuccessCreateAccountImplCopyWith(_$SuccessCreateAccountImpl value,
          $Res Function(_$SuccessCreateAccountImpl) then) =
      __$$SuccessCreateAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SuccessCreateAccountImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessCreateAccountImpl>
    implements _$$SuccessCreateAccountImplCopyWith<$Res> {
  __$$SuccessCreateAccountImplCopyWithImpl(_$SuccessCreateAccountImpl _value,
      $Res Function(_$SuccessCreateAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$SuccessCreateAccountImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
    ));
  }
}

/// @nodoc

class _$SuccessCreateAccountImpl implements _SuccessCreateAccount {
  const _$SuccessCreateAccountImpl({this.user = null});

  @override
  @JsonKey()
  final UserEntities? user;

  @override
  String toString() {
    return 'AuthState.successCreateAccount(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCreateAccountImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCreateAccountImplCopyWith<_$SuccessCreateAccountImpl>
      get copyWith =>
          __$$SuccessCreateAccountImplCopyWithImpl<_$SuccessCreateAccountImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
  }) {
    return successCreateAccount(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
  }) {
    return successCreateAccount?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
    required TResult orElse(),
  }) {
    if (successCreateAccount != null) {
      return successCreateAccount(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) {
    return successCreateAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) {
    return successCreateAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (successCreateAccount != null) {
      return successCreateAccount(this);
    }
    return orElse();
  }
}

abstract class _SuccessCreateAccount implements AuthState {
  const factory _SuccessCreateAccount({final UserEntities? user}) =
      _$SuccessCreateAccountImpl;

  @override
  UserEntities? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCreateAccountImplCopyWith<_$SuccessCreateAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingGetAccountImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoadingGetAccountImplCopyWith(_$LoadingGetAccountImpl value,
          $Res Function(_$LoadingGetAccountImpl) then) =
      __$$LoadingGetAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoadingGetAccountImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingGetAccountImpl>
    implements _$$LoadingGetAccountImplCopyWith<$Res> {
  __$$LoadingGetAccountImplCopyWithImpl(_$LoadingGetAccountImpl _value,
      $Res Function(_$LoadingGetAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$LoadingGetAccountImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
    ));
  }
}

/// @nodoc

class _$LoadingGetAccountImpl implements _LoadingGetAccount {
  const _$LoadingGetAccountImpl({this.user = null});

  @override
  @JsonKey()
  final UserEntities? user;

  @override
  String toString() {
    return 'AuthState.loadingGetAccount(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingGetAccountImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingGetAccountImplCopyWith<_$LoadingGetAccountImpl> get copyWith =>
      __$$LoadingGetAccountImplCopyWithImpl<_$LoadingGetAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
  }) {
    return loadingGetAccount(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
  }) {
    return loadingGetAccount?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
    required TResult orElse(),
  }) {
    if (loadingGetAccount != null) {
      return loadingGetAccount(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) {
    return loadingGetAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) {
    return loadingGetAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loadingGetAccount != null) {
      return loadingGetAccount(this);
    }
    return orElse();
  }
}

abstract class _LoadingGetAccount implements AuthState {
  const factory _LoadingGetAccount({final UserEntities? user}) =
      _$LoadingGetAccountImpl;

  @override
  UserEntities? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingGetAccountImplCopyWith<_$LoadingGetAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessGetAccountImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$SuccessGetAccountImplCopyWith(_$SuccessGetAccountImpl value,
          $Res Function(_$SuccessGetAccountImpl) then) =
      __$$SuccessGetAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SuccessGetAccountImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessGetAccountImpl>
    implements _$$SuccessGetAccountImplCopyWith<$Res> {
  __$$SuccessGetAccountImplCopyWithImpl(_$SuccessGetAccountImpl _value,
      $Res Function(_$SuccessGetAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$SuccessGetAccountImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
    ));
  }
}

/// @nodoc

class _$SuccessGetAccountImpl implements _SuccessGetAccount {
  const _$SuccessGetAccountImpl({this.user = null});

  @override
  @JsonKey()
  final UserEntities? user;

  @override
  String toString() {
    return 'AuthState.successGetAccount(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessGetAccountImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessGetAccountImplCopyWith<_$SuccessGetAccountImpl> get copyWith =>
      __$$SuccessGetAccountImplCopyWithImpl<_$SuccessGetAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
  }) {
    return successGetAccount(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
  }) {
    return successGetAccount?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
    required TResult orElse(),
  }) {
    if (successGetAccount != null) {
      return successGetAccount(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) {
    return successGetAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) {
    return successGetAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (successGetAccount != null) {
      return successGetAccount(this);
    }
    return orElse();
  }
}

abstract class _SuccessGetAccount implements AuthState {
  const factory _SuccessGetAccount({final UserEntities? user}) =
      _$SuccessGetAccountImpl;

  @override
  UserEntities? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessGetAccountImplCopyWith<_$SuccessGetAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingUpdateSchoolImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoadingUpdateSchoolImplCopyWith(_$LoadingUpdateSchoolImpl value,
          $Res Function(_$LoadingUpdateSchoolImpl) then) =
      __$$LoadingUpdateSchoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoadingUpdateSchoolImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingUpdateSchoolImpl>
    implements _$$LoadingUpdateSchoolImplCopyWith<$Res> {
  __$$LoadingUpdateSchoolImplCopyWithImpl(_$LoadingUpdateSchoolImpl _value,
      $Res Function(_$LoadingUpdateSchoolImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$LoadingUpdateSchoolImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
    ));
  }
}

/// @nodoc

class _$LoadingUpdateSchoolImpl implements _LoadingUpdateSchool {
  const _$LoadingUpdateSchoolImpl({this.user = null});

  @override
  @JsonKey()
  final UserEntities? user;

  @override
  String toString() {
    return 'AuthState.loadingUpdateSchool(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingUpdateSchoolImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingUpdateSchoolImplCopyWith<_$LoadingUpdateSchoolImpl> get copyWith =>
      __$$LoadingUpdateSchoolImplCopyWithImpl<_$LoadingUpdateSchoolImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
  }) {
    return loadingUpdateSchool(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
  }) {
    return loadingUpdateSchool?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
    required TResult orElse(),
  }) {
    if (loadingUpdateSchool != null) {
      return loadingUpdateSchool(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) {
    return loadingUpdateSchool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) {
    return loadingUpdateSchool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loadingUpdateSchool != null) {
      return loadingUpdateSchool(this);
    }
    return orElse();
  }
}

abstract class _LoadingUpdateSchool implements AuthState {
  const factory _LoadingUpdateSchool({final UserEntities? user}) =
      _$LoadingUpdateSchoolImpl;

  @override
  UserEntities? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingUpdateSchoolImplCopyWith<_$LoadingUpdateSchoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessUpdateSchoolImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$SuccessUpdateSchoolImplCopyWith(_$SuccessUpdateSchoolImpl value,
          $Res Function(_$SuccessUpdateSchoolImpl) then) =
      __$$SuccessUpdateSchoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user, String message});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SuccessUpdateSchoolImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessUpdateSchoolImpl>
    implements _$$SuccessUpdateSchoolImplCopyWith<$Res> {
  __$$SuccessUpdateSchoolImplCopyWithImpl(_$SuccessUpdateSchoolImpl _value,
      $Res Function(_$SuccessUpdateSchoolImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
  }) {
    return _then(_$SuccessUpdateSchoolImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessUpdateSchoolImpl implements _SuccessUpdateSchool {
  const _$SuccessUpdateSchoolImpl({this.user = null, required this.message});

  @override
  @JsonKey()
  final UserEntities? user;
  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.successUpdateSchool(user: $user, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUpdateSchoolImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUpdateSchoolImplCopyWith<_$SuccessUpdateSchoolImpl> get copyWith =>
      __$$SuccessUpdateSchoolImplCopyWithImpl<_$SuccessUpdateSchoolImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
  }) {
    return successUpdateSchool(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
  }) {
    return successUpdateSchool?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
    required TResult orElse(),
  }) {
    if (successUpdateSchool != null) {
      return successUpdateSchool(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) {
    return successUpdateSchool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) {
    return successUpdateSchool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (successUpdateSchool != null) {
      return successUpdateSchool(this);
    }
    return orElse();
  }
}

abstract class _SuccessUpdateSchool implements AuthState {
  const factory _SuccessUpdateSchool(
      {final UserEntities? user,
      required final String message}) = _$SuccessUpdateSchoolImpl;

  @override
  UserEntities? get user;
  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessUpdateSchoolImplCopyWith<_$SuccessUpdateSchoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntities? user, String message});

  @override
  $UserEntitiesCopyWith<$Res>? get user;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntities?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({this.user = null, required this.message});

  @override
  @JsonKey()
  final UserEntities? user;
  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failed(user: $user, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntities? user) initial,
    required TResult Function(UserEntities? user) loadingCheckToken,
    required TResult Function(UserEntities? user, bool isAuthenticated)
        successCheckToken,
    required TResult Function(UserEntities? user) loadingCreateAccount,
    required TResult Function(UserEntities? user) successCreateAccount,
    required TResult Function(UserEntities? user) loadingGetAccount,
    required TResult Function(UserEntities? user) successGetAccount,
    required TResult Function(UserEntities? user) loadingUpdateSchool,
    required TResult Function(UserEntities? user, String message)
        successUpdateSchool,
    required TResult Function(UserEntities? user, String message) failed,
  }) {
    return failed(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntities? user)? initial,
    TResult? Function(UserEntities? user)? loadingCheckToken,
    TResult? Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult? Function(UserEntities? user)? loadingCreateAccount,
    TResult? Function(UserEntities? user)? successCreateAccount,
    TResult? Function(UserEntities? user)? loadingGetAccount,
    TResult? Function(UserEntities? user)? successGetAccount,
    TResult? Function(UserEntities? user)? loadingUpdateSchool,
    TResult? Function(UserEntities? user, String message)? successUpdateSchool,
    TResult? Function(UserEntities? user, String message)? failed,
  }) {
    return failed?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntities? user)? initial,
    TResult Function(UserEntities? user)? loadingCheckToken,
    TResult Function(UserEntities? user, bool isAuthenticated)?
        successCheckToken,
    TResult Function(UserEntities? user)? loadingCreateAccount,
    TResult Function(UserEntities? user)? successCreateAccount,
    TResult Function(UserEntities? user)? loadingGetAccount,
    TResult Function(UserEntities? user)? successGetAccount,
    TResult Function(UserEntities? user)? loadingUpdateSchool,
    TResult Function(UserEntities? user, String message)? successUpdateSchool,
    TResult Function(UserEntities? user, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) initial,
    required TResult Function(_LoadingCheckToken value) loadingCheckToken,
    required TResult Function(_SuccessCheckToken value) successCheckToken,
    required TResult Function(_LoadingCreateAccount value) loadingCreateAccount,
    required TResult Function(_SuccessCreateAccount value) successCreateAccount,
    required TResult Function(_LoadingGetAccount value) loadingGetAccount,
    required TResult Function(_SuccessGetAccount value) successGetAccount,
    required TResult Function(_LoadingUpdateSchool value) loadingUpdateSchool,
    required TResult Function(_SuccessUpdateSchool value) successUpdateSchool,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? initial,
    TResult? Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult? Function(_SuccessCheckToken value)? successCheckToken,
    TResult? Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult? Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult? Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult? Function(_SuccessGetAccount value)? successGetAccount,
    TResult? Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult? Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? initial,
    TResult Function(_LoadingCheckToken value)? loadingCheckToken,
    TResult Function(_SuccessCheckToken value)? successCheckToken,
    TResult Function(_LoadingCreateAccount value)? loadingCreateAccount,
    TResult Function(_SuccessCreateAccount value)? successCreateAccount,
    TResult Function(_LoadingGetAccount value)? loadingGetAccount,
    TResult Function(_SuccessGetAccount value)? successGetAccount,
    TResult Function(_LoadingUpdateSchool value)? loadingUpdateSchool,
    TResult Function(_SuccessUpdateSchool value)? successUpdateSchool,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AuthState {
  const factory _Failed(
      {final UserEntities? user, required final String message}) = _$FailedImpl;

  @override
  UserEntities? get user;
  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
