// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkTokenEvent,
    required TResult Function(String name, String schoolType, String schoolName)
        createAccountEvent,
    required TResult Function() getDetailUserEvent,
    required TResult Function(String schoolName, String schoolType)
        updateUserSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkTokenEvent,
    TResult? Function(String name, String schoolType, String schoolName)?
        createAccountEvent,
    TResult? Function()? getDetailUserEvent,
    TResult? Function(String schoolName, String schoolType)? updateUserSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkTokenEvent,
    TResult Function(String name, String schoolType, String schoolName)?
        createAccountEvent,
    TResult Function()? getDetailUserEvent,
    TResult Function(String schoolName, String schoolType)? updateUserSchool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckTokenEvent value) checkTokenEvent,
    required TResult Function(CreateAccountEvent value) createAccountEvent,
    required TResult Function(GetDetailUserEvent value) getDetailUserEvent,
    required TResult Function(UpdateUserSchoolEvent value) updateUserSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckTokenEvent value)? checkTokenEvent,
    TResult? Function(CreateAccountEvent value)? createAccountEvent,
    TResult? Function(GetDetailUserEvent value)? getDetailUserEvent,
    TResult? Function(UpdateUserSchoolEvent value)? updateUserSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckTokenEvent value)? checkTokenEvent,
    TResult Function(CreateAccountEvent value)? createAccountEvent,
    TResult Function(GetDetailUserEvent value)? getDetailUserEvent,
    TResult Function(UpdateUserSchoolEvent value)? updateUserSchool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckTokenEventImplCopyWith<$Res> {
  factory _$$CheckTokenEventImplCopyWith(_$CheckTokenEventImpl value,
          $Res Function(_$CheckTokenEventImpl) then) =
      __$$CheckTokenEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckTokenEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckTokenEventImpl>
    implements _$$CheckTokenEventImplCopyWith<$Res> {
  __$$CheckTokenEventImplCopyWithImpl(
      _$CheckTokenEventImpl _value, $Res Function(_$CheckTokenEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckTokenEventImpl implements CheckTokenEvent {
  const _$CheckTokenEventImpl();

  @override
  String toString() {
    return 'AuthEvent.checkTokenEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckTokenEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkTokenEvent,
    required TResult Function(String name, String schoolType, String schoolName)
        createAccountEvent,
    required TResult Function() getDetailUserEvent,
    required TResult Function(String schoolName, String schoolType)
        updateUserSchool,
  }) {
    return checkTokenEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkTokenEvent,
    TResult? Function(String name, String schoolType, String schoolName)?
        createAccountEvent,
    TResult? Function()? getDetailUserEvent,
    TResult? Function(String schoolName, String schoolType)? updateUserSchool,
  }) {
    return checkTokenEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkTokenEvent,
    TResult Function(String name, String schoolType, String schoolName)?
        createAccountEvent,
    TResult Function()? getDetailUserEvent,
    TResult Function(String schoolName, String schoolType)? updateUserSchool,
    required TResult orElse(),
  }) {
    if (checkTokenEvent != null) {
      return checkTokenEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckTokenEvent value) checkTokenEvent,
    required TResult Function(CreateAccountEvent value) createAccountEvent,
    required TResult Function(GetDetailUserEvent value) getDetailUserEvent,
    required TResult Function(UpdateUserSchoolEvent value) updateUserSchool,
  }) {
    return checkTokenEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckTokenEvent value)? checkTokenEvent,
    TResult? Function(CreateAccountEvent value)? createAccountEvent,
    TResult? Function(GetDetailUserEvent value)? getDetailUserEvent,
    TResult? Function(UpdateUserSchoolEvent value)? updateUserSchool,
  }) {
    return checkTokenEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckTokenEvent value)? checkTokenEvent,
    TResult Function(CreateAccountEvent value)? createAccountEvent,
    TResult Function(GetDetailUserEvent value)? getDetailUserEvent,
    TResult Function(UpdateUserSchoolEvent value)? updateUserSchool,
    required TResult orElse(),
  }) {
    if (checkTokenEvent != null) {
      return checkTokenEvent(this);
    }
    return orElse();
  }
}

abstract class CheckTokenEvent implements AuthEvent {
  const factory CheckTokenEvent() = _$CheckTokenEventImpl;
}

/// @nodoc
abstract class _$$CreateAccountEventImplCopyWith<$Res> {
  factory _$$CreateAccountEventImplCopyWith(_$CreateAccountEventImpl value,
          $Res Function(_$CreateAccountEventImpl) then) =
      __$$CreateAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String schoolType, String schoolName});
}

/// @nodoc
class __$$CreateAccountEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateAccountEventImpl>
    implements _$$CreateAccountEventImplCopyWith<$Res> {
  __$$CreateAccountEventImplCopyWithImpl(_$CreateAccountEventImpl _value,
      $Res Function(_$CreateAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? schoolType = null,
    Object? schoolName = null,
  }) {
    return _then(_$CreateAccountEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schoolType: null == schoolType
          ? _value.schoolType
          : schoolType // ignore: cast_nullable_to_non_nullable
              as String,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateAccountEventImpl implements CreateAccountEvent {
  const _$CreateAccountEventImpl(
      {required this.name, required this.schoolType, required this.schoolName});

  @override
  final String name;
  @override
  final String schoolType;
  @override
  final String schoolName;

  @override
  String toString() {
    return 'AuthEvent.createAccountEvent(name: $name, schoolType: $schoolType, schoolName: $schoolName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.schoolType, schoolType) ||
                other.schoolType == schoolType) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, schoolType, schoolName);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountEventImplCopyWith<_$CreateAccountEventImpl> get copyWith =>
      __$$CreateAccountEventImplCopyWithImpl<_$CreateAccountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkTokenEvent,
    required TResult Function(String name, String schoolType, String schoolName)
        createAccountEvent,
    required TResult Function() getDetailUserEvent,
    required TResult Function(String schoolName, String schoolType)
        updateUserSchool,
  }) {
    return createAccountEvent(name, schoolType, schoolName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkTokenEvent,
    TResult? Function(String name, String schoolType, String schoolName)?
        createAccountEvent,
    TResult? Function()? getDetailUserEvent,
    TResult? Function(String schoolName, String schoolType)? updateUserSchool,
  }) {
    return createAccountEvent?.call(name, schoolType, schoolName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkTokenEvent,
    TResult Function(String name, String schoolType, String schoolName)?
        createAccountEvent,
    TResult Function()? getDetailUserEvent,
    TResult Function(String schoolName, String schoolType)? updateUserSchool,
    required TResult orElse(),
  }) {
    if (createAccountEvent != null) {
      return createAccountEvent(name, schoolType, schoolName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckTokenEvent value) checkTokenEvent,
    required TResult Function(CreateAccountEvent value) createAccountEvent,
    required TResult Function(GetDetailUserEvent value) getDetailUserEvent,
    required TResult Function(UpdateUserSchoolEvent value) updateUserSchool,
  }) {
    return createAccountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckTokenEvent value)? checkTokenEvent,
    TResult? Function(CreateAccountEvent value)? createAccountEvent,
    TResult? Function(GetDetailUserEvent value)? getDetailUserEvent,
    TResult? Function(UpdateUserSchoolEvent value)? updateUserSchool,
  }) {
    return createAccountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckTokenEvent value)? checkTokenEvent,
    TResult Function(CreateAccountEvent value)? createAccountEvent,
    TResult Function(GetDetailUserEvent value)? getDetailUserEvent,
    TResult Function(UpdateUserSchoolEvent value)? updateUserSchool,
    required TResult orElse(),
  }) {
    if (createAccountEvent != null) {
      return createAccountEvent(this);
    }
    return orElse();
  }
}

abstract class CreateAccountEvent implements AuthEvent {
  const factory CreateAccountEvent(
      {required final String name,
      required final String schoolType,
      required final String schoolName}) = _$CreateAccountEventImpl;

  String get name;
  String get schoolType;
  String get schoolName;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAccountEventImplCopyWith<_$CreateAccountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDetailUserEventImplCopyWith<$Res> {
  factory _$$GetDetailUserEventImplCopyWith(_$GetDetailUserEventImpl value,
          $Res Function(_$GetDetailUserEventImpl) then) =
      __$$GetDetailUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDetailUserEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetDetailUserEventImpl>
    implements _$$GetDetailUserEventImplCopyWith<$Res> {
  __$$GetDetailUserEventImplCopyWithImpl(_$GetDetailUserEventImpl _value,
      $Res Function(_$GetDetailUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDetailUserEventImpl implements GetDetailUserEvent {
  const _$GetDetailUserEventImpl();

  @override
  String toString() {
    return 'AuthEvent.getDetailUserEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDetailUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkTokenEvent,
    required TResult Function(String name, String schoolType, String schoolName)
        createAccountEvent,
    required TResult Function() getDetailUserEvent,
    required TResult Function(String schoolName, String schoolType)
        updateUserSchool,
  }) {
    return getDetailUserEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkTokenEvent,
    TResult? Function(String name, String schoolType, String schoolName)?
        createAccountEvent,
    TResult? Function()? getDetailUserEvent,
    TResult? Function(String schoolName, String schoolType)? updateUserSchool,
  }) {
    return getDetailUserEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkTokenEvent,
    TResult Function(String name, String schoolType, String schoolName)?
        createAccountEvent,
    TResult Function()? getDetailUserEvent,
    TResult Function(String schoolName, String schoolType)? updateUserSchool,
    required TResult orElse(),
  }) {
    if (getDetailUserEvent != null) {
      return getDetailUserEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckTokenEvent value) checkTokenEvent,
    required TResult Function(CreateAccountEvent value) createAccountEvent,
    required TResult Function(GetDetailUserEvent value) getDetailUserEvent,
    required TResult Function(UpdateUserSchoolEvent value) updateUserSchool,
  }) {
    return getDetailUserEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckTokenEvent value)? checkTokenEvent,
    TResult? Function(CreateAccountEvent value)? createAccountEvent,
    TResult? Function(GetDetailUserEvent value)? getDetailUserEvent,
    TResult? Function(UpdateUserSchoolEvent value)? updateUserSchool,
  }) {
    return getDetailUserEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckTokenEvent value)? checkTokenEvent,
    TResult Function(CreateAccountEvent value)? createAccountEvent,
    TResult Function(GetDetailUserEvent value)? getDetailUserEvent,
    TResult Function(UpdateUserSchoolEvent value)? updateUserSchool,
    required TResult orElse(),
  }) {
    if (getDetailUserEvent != null) {
      return getDetailUserEvent(this);
    }
    return orElse();
  }
}

abstract class GetDetailUserEvent implements AuthEvent {
  const factory GetDetailUserEvent() = _$GetDetailUserEventImpl;
}

/// @nodoc
abstract class _$$UpdateUserSchoolEventImplCopyWith<$Res> {
  factory _$$UpdateUserSchoolEventImplCopyWith(
          _$UpdateUserSchoolEventImpl value,
          $Res Function(_$UpdateUserSchoolEventImpl) then) =
      __$$UpdateUserSchoolEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String schoolName, String schoolType});
}

/// @nodoc
class __$$UpdateUserSchoolEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserSchoolEventImpl>
    implements _$$UpdateUserSchoolEventImplCopyWith<$Res> {
  __$$UpdateUserSchoolEventImplCopyWithImpl(_$UpdateUserSchoolEventImpl _value,
      $Res Function(_$UpdateUserSchoolEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolName = null,
    Object? schoolType = null,
  }) {
    return _then(_$UpdateUserSchoolEventImpl(
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      schoolType: null == schoolType
          ? _value.schoolType
          : schoolType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserSchoolEventImpl implements UpdateUserSchoolEvent {
  const _$UpdateUserSchoolEventImpl(
      {required this.schoolName, required this.schoolType});

  @override
  final String schoolName;
  @override
  final String schoolType;

  @override
  String toString() {
    return 'AuthEvent.updateUserSchool(schoolName: $schoolName, schoolType: $schoolType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserSchoolEventImpl &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.schoolType, schoolType) ||
                other.schoolType == schoolType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolName, schoolType);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserSchoolEventImplCopyWith<_$UpdateUserSchoolEventImpl>
      get copyWith => __$$UpdateUserSchoolEventImplCopyWithImpl<
          _$UpdateUserSchoolEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkTokenEvent,
    required TResult Function(String name, String schoolType, String schoolName)
        createAccountEvent,
    required TResult Function() getDetailUserEvent,
    required TResult Function(String schoolName, String schoolType)
        updateUserSchool,
  }) {
    return updateUserSchool(schoolName, schoolType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkTokenEvent,
    TResult? Function(String name, String schoolType, String schoolName)?
        createAccountEvent,
    TResult? Function()? getDetailUserEvent,
    TResult? Function(String schoolName, String schoolType)? updateUserSchool,
  }) {
    return updateUserSchool?.call(schoolName, schoolType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkTokenEvent,
    TResult Function(String name, String schoolType, String schoolName)?
        createAccountEvent,
    TResult Function()? getDetailUserEvent,
    TResult Function(String schoolName, String schoolType)? updateUserSchool,
    required TResult orElse(),
  }) {
    if (updateUserSchool != null) {
      return updateUserSchool(schoolName, schoolType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckTokenEvent value) checkTokenEvent,
    required TResult Function(CreateAccountEvent value) createAccountEvent,
    required TResult Function(GetDetailUserEvent value) getDetailUserEvent,
    required TResult Function(UpdateUserSchoolEvent value) updateUserSchool,
  }) {
    return updateUserSchool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckTokenEvent value)? checkTokenEvent,
    TResult? Function(CreateAccountEvent value)? createAccountEvent,
    TResult? Function(GetDetailUserEvent value)? getDetailUserEvent,
    TResult? Function(UpdateUserSchoolEvent value)? updateUserSchool,
  }) {
    return updateUserSchool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckTokenEvent value)? checkTokenEvent,
    TResult Function(CreateAccountEvent value)? createAccountEvent,
    TResult Function(GetDetailUserEvent value)? getDetailUserEvent,
    TResult Function(UpdateUserSchoolEvent value)? updateUserSchool,
    required TResult orElse(),
  }) {
    if (updateUserSchool != null) {
      return updateUserSchool(this);
    }
    return orElse();
  }
}

abstract class UpdateUserSchoolEvent implements AuthEvent {
  const factory UpdateUserSchoolEvent(
      {required final String schoolName,
      required final String schoolType}) = _$UpdateUserSchoolEventImpl;

  String get schoolName;
  String get schoolType;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserSchoolEventImplCopyWith<_$UpdateUserSchoolEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
