// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ahp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AhpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String schoolType) generatePairwiseMatrixInput,
    required TResult Function(
            String? id, bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixCriteria,
    required TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixAlternative,
    required TResult Function() getAhpResult,
    required TResult Function() resetAhpResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String schoolType)? generatePairwiseMatrixInput,
    TResult? Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult? Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult? Function()? getAhpResult,
    TResult? Function()? resetAhpResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String schoolType)? generatePairwiseMatrixInput,
    TResult Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult Function()? getAhpResult,
    TResult Function()? resetAhpResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneratePairwiseMatrixInputEvent value)
        generatePairwiseMatrixInput,
    required TResult Function(UpdatePairwiseMatrixCriteriaEvent value)
        updatePairwiseMatrixCriteria,
    required TResult Function(UpdatePairwiseMatrixAlternativeEvent value)
        updatePairwiseMatrixAlternative,
    required TResult Function(GetAhpResultEvent value) getAhpResult,
    required TResult Function(ResetAhpResultEvent value) resetAhpResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult? Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult? Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult? Function(GetAhpResultEvent value)? getAhpResult,
    TResult? Function(ResetAhpResultEvent value)? resetAhpResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult Function(GetAhpResultEvent value)? getAhpResult,
    TResult Function(ResetAhpResultEvent value)? resetAhpResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AhpEventCopyWith<$Res> {
  factory $AhpEventCopyWith(AhpEvent value, $Res Function(AhpEvent) then) =
      _$AhpEventCopyWithImpl<$Res, AhpEvent>;
}

/// @nodoc
class _$AhpEventCopyWithImpl<$Res, $Val extends AhpEvent>
    implements $AhpEventCopyWith<$Res> {
  _$AhpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GeneratePairwiseMatrixInputEventImplCopyWith<$Res> {
  factory _$$GeneratePairwiseMatrixInputEventImplCopyWith(
          _$GeneratePairwiseMatrixInputEventImpl value,
          $Res Function(_$GeneratePairwiseMatrixInputEventImpl) then) =
      __$$GeneratePairwiseMatrixInputEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String schoolType});
}

/// @nodoc
class __$$GeneratePairwiseMatrixInputEventImplCopyWithImpl<$Res>
    extends _$AhpEventCopyWithImpl<$Res, _$GeneratePairwiseMatrixInputEventImpl>
    implements _$$GeneratePairwiseMatrixInputEventImplCopyWith<$Res> {
  __$$GeneratePairwiseMatrixInputEventImplCopyWithImpl(
      _$GeneratePairwiseMatrixInputEventImpl _value,
      $Res Function(_$GeneratePairwiseMatrixInputEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolType = null,
  }) {
    return _then(_$GeneratePairwiseMatrixInputEventImpl(
      schoolType: null == schoolType
          ? _value.schoolType
          : schoolType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GeneratePairwiseMatrixInputEventImpl
    implements GeneratePairwiseMatrixInputEvent {
  const _$GeneratePairwiseMatrixInputEventImpl({required this.schoolType});

  @override
  final String schoolType;

  @override
  String toString() {
    return 'AhpEvent.generatePairwiseMatrixInput(schoolType: $schoolType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratePairwiseMatrixInputEventImpl &&
            (identical(other.schoolType, schoolType) ||
                other.schoolType == schoolType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolType);

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratePairwiseMatrixInputEventImplCopyWith<
          _$GeneratePairwiseMatrixInputEventImpl>
      get copyWith => __$$GeneratePairwiseMatrixInputEventImplCopyWithImpl<
          _$GeneratePairwiseMatrixInputEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String schoolType) generatePairwiseMatrixInput,
    required TResult Function(
            String? id, bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixCriteria,
    required TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixAlternative,
    required TResult Function() getAhpResult,
    required TResult Function() resetAhpResult,
  }) {
    return generatePairwiseMatrixInput(schoolType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String schoolType)? generatePairwiseMatrixInput,
    TResult? Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult? Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult? Function()? getAhpResult,
    TResult? Function()? resetAhpResult,
  }) {
    return generatePairwiseMatrixInput?.call(schoolType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String schoolType)? generatePairwiseMatrixInput,
    TResult Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult Function()? getAhpResult,
    TResult Function()? resetAhpResult,
    required TResult orElse(),
  }) {
    if (generatePairwiseMatrixInput != null) {
      return generatePairwiseMatrixInput(schoolType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneratePairwiseMatrixInputEvent value)
        generatePairwiseMatrixInput,
    required TResult Function(UpdatePairwiseMatrixCriteriaEvent value)
        updatePairwiseMatrixCriteria,
    required TResult Function(UpdatePairwiseMatrixAlternativeEvent value)
        updatePairwiseMatrixAlternative,
    required TResult Function(GetAhpResultEvent value) getAhpResult,
    required TResult Function(ResetAhpResultEvent value) resetAhpResult,
  }) {
    return generatePairwiseMatrixInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult? Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult? Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult? Function(GetAhpResultEvent value)? getAhpResult,
    TResult? Function(ResetAhpResultEvent value)? resetAhpResult,
  }) {
    return generatePairwiseMatrixInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult Function(GetAhpResultEvent value)? getAhpResult,
    TResult Function(ResetAhpResultEvent value)? resetAhpResult,
    required TResult orElse(),
  }) {
    if (generatePairwiseMatrixInput != null) {
      return generatePairwiseMatrixInput(this);
    }
    return orElse();
  }
}

abstract class GeneratePairwiseMatrixInputEvent implements AhpEvent {
  const factory GeneratePairwiseMatrixInputEvent(
          {required final String schoolType}) =
      _$GeneratePairwiseMatrixInputEventImpl;

  String get schoolType;

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneratePairwiseMatrixInputEventImplCopyWith<
          _$GeneratePairwiseMatrixInputEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePairwiseMatrixCriteriaEventImplCopyWith<$Res> {
  factory _$$UpdatePairwiseMatrixCriteriaEventImplCopyWith(
          _$UpdatePairwiseMatrixCriteriaEventImpl value,
          $Res Function(_$UpdatePairwiseMatrixCriteriaEventImpl) then) =
      __$$UpdatePairwiseMatrixCriteriaEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? id, bool isLeftMoreImportant, int referenceValue});
}

/// @nodoc
class __$$UpdatePairwiseMatrixCriteriaEventImplCopyWithImpl<$Res>
    extends _$AhpEventCopyWithImpl<$Res,
        _$UpdatePairwiseMatrixCriteriaEventImpl>
    implements _$$UpdatePairwiseMatrixCriteriaEventImplCopyWith<$Res> {
  __$$UpdatePairwiseMatrixCriteriaEventImplCopyWithImpl(
      _$UpdatePairwiseMatrixCriteriaEventImpl _value,
      $Res Function(_$UpdatePairwiseMatrixCriteriaEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isLeftMoreImportant = null,
    Object? referenceValue = null,
  }) {
    return _then(_$UpdatePairwiseMatrixCriteriaEventImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isLeftMoreImportant: null == isLeftMoreImportant
          ? _value.isLeftMoreImportant
          : isLeftMoreImportant // ignore: cast_nullable_to_non_nullable
              as bool,
      referenceValue: null == referenceValue
          ? _value.referenceValue
          : referenceValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatePairwiseMatrixCriteriaEventImpl
    implements UpdatePairwiseMatrixCriteriaEvent {
  const _$UpdatePairwiseMatrixCriteriaEventImpl(
      {required this.id,
      required this.isLeftMoreImportant,
      required this.referenceValue});

  @override
  final String? id;
  @override
  final bool isLeftMoreImportant;
  @override
  final int referenceValue;

  @override
  String toString() {
    return 'AhpEvent.updatePairwiseMatrixCriteria(id: $id, isLeftMoreImportant: $isLeftMoreImportant, referenceValue: $referenceValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePairwiseMatrixCriteriaEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isLeftMoreImportant, isLeftMoreImportant) ||
                other.isLeftMoreImportant == isLeftMoreImportant) &&
            (identical(other.referenceValue, referenceValue) ||
                other.referenceValue == referenceValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, isLeftMoreImportant, referenceValue);

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePairwiseMatrixCriteriaEventImplCopyWith<
          _$UpdatePairwiseMatrixCriteriaEventImpl>
      get copyWith => __$$UpdatePairwiseMatrixCriteriaEventImplCopyWithImpl<
          _$UpdatePairwiseMatrixCriteriaEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String schoolType) generatePairwiseMatrixInput,
    required TResult Function(
            String? id, bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixCriteria,
    required TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixAlternative,
    required TResult Function() getAhpResult,
    required TResult Function() resetAhpResult,
  }) {
    return updatePairwiseMatrixCriteria(
        id, isLeftMoreImportant, referenceValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String schoolType)? generatePairwiseMatrixInput,
    TResult? Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult? Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult? Function()? getAhpResult,
    TResult? Function()? resetAhpResult,
  }) {
    return updatePairwiseMatrixCriteria?.call(
        id, isLeftMoreImportant, referenceValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String schoolType)? generatePairwiseMatrixInput,
    TResult Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult Function()? getAhpResult,
    TResult Function()? resetAhpResult,
    required TResult orElse(),
  }) {
    if (updatePairwiseMatrixCriteria != null) {
      return updatePairwiseMatrixCriteria(
          id, isLeftMoreImportant, referenceValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneratePairwiseMatrixInputEvent value)
        generatePairwiseMatrixInput,
    required TResult Function(UpdatePairwiseMatrixCriteriaEvent value)
        updatePairwiseMatrixCriteria,
    required TResult Function(UpdatePairwiseMatrixAlternativeEvent value)
        updatePairwiseMatrixAlternative,
    required TResult Function(GetAhpResultEvent value) getAhpResult,
    required TResult Function(ResetAhpResultEvent value) resetAhpResult,
  }) {
    return updatePairwiseMatrixCriteria(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult? Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult? Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult? Function(GetAhpResultEvent value)? getAhpResult,
    TResult? Function(ResetAhpResultEvent value)? resetAhpResult,
  }) {
    return updatePairwiseMatrixCriteria?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult Function(GetAhpResultEvent value)? getAhpResult,
    TResult Function(ResetAhpResultEvent value)? resetAhpResult,
    required TResult orElse(),
  }) {
    if (updatePairwiseMatrixCriteria != null) {
      return updatePairwiseMatrixCriteria(this);
    }
    return orElse();
  }
}

abstract class UpdatePairwiseMatrixCriteriaEvent implements AhpEvent {
  const factory UpdatePairwiseMatrixCriteriaEvent(
          {required final String? id,
          required final bool isLeftMoreImportant,
          required final int referenceValue}) =
      _$UpdatePairwiseMatrixCriteriaEventImpl;

  String? get id;
  bool get isLeftMoreImportant;
  int get referenceValue;

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePairwiseMatrixCriteriaEventImplCopyWith<
          _$UpdatePairwiseMatrixCriteriaEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePairwiseMatrixAlternativeEventImplCopyWith<$Res> {
  factory _$$UpdatePairwiseMatrixAlternativeEventImplCopyWith(
          _$UpdatePairwiseMatrixAlternativeEventImpl value,
          $Res Function(_$UpdatePairwiseMatrixAlternativeEventImpl) then) =
      __$$UpdatePairwiseMatrixAlternativeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? id,
      String? alternativeId,
      bool isLeftMoreImportant,
      int referenceValue});
}

/// @nodoc
class __$$UpdatePairwiseMatrixAlternativeEventImplCopyWithImpl<$Res>
    extends _$AhpEventCopyWithImpl<$Res,
        _$UpdatePairwiseMatrixAlternativeEventImpl>
    implements _$$UpdatePairwiseMatrixAlternativeEventImplCopyWith<$Res> {
  __$$UpdatePairwiseMatrixAlternativeEventImplCopyWithImpl(
      _$UpdatePairwiseMatrixAlternativeEventImpl _value,
      $Res Function(_$UpdatePairwiseMatrixAlternativeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? alternativeId = freezed,
    Object? isLeftMoreImportant = null,
    Object? referenceValue = null,
  }) {
    return _then(_$UpdatePairwiseMatrixAlternativeEventImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeId: freezed == alternativeId
          ? _value.alternativeId
          : alternativeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLeftMoreImportant: null == isLeftMoreImportant
          ? _value.isLeftMoreImportant
          : isLeftMoreImportant // ignore: cast_nullable_to_non_nullable
              as bool,
      referenceValue: null == referenceValue
          ? _value.referenceValue
          : referenceValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatePairwiseMatrixAlternativeEventImpl
    implements UpdatePairwiseMatrixAlternativeEvent {
  const _$UpdatePairwiseMatrixAlternativeEventImpl(
      {required this.id,
      required this.alternativeId,
      required this.isLeftMoreImportant,
      required this.referenceValue});

  @override
  final String? id;
  @override
  final String? alternativeId;
  @override
  final bool isLeftMoreImportant;
  @override
  final int referenceValue;

  @override
  String toString() {
    return 'AhpEvent.updatePairwiseMatrixAlternative(id: $id, alternativeId: $alternativeId, isLeftMoreImportant: $isLeftMoreImportant, referenceValue: $referenceValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePairwiseMatrixAlternativeEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.alternativeId, alternativeId) ||
                other.alternativeId == alternativeId) &&
            (identical(other.isLeftMoreImportant, isLeftMoreImportant) ||
                other.isLeftMoreImportant == isLeftMoreImportant) &&
            (identical(other.referenceValue, referenceValue) ||
                other.referenceValue == referenceValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, alternativeId, isLeftMoreImportant, referenceValue);

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePairwiseMatrixAlternativeEventImplCopyWith<
          _$UpdatePairwiseMatrixAlternativeEventImpl>
      get copyWith => __$$UpdatePairwiseMatrixAlternativeEventImplCopyWithImpl<
          _$UpdatePairwiseMatrixAlternativeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String schoolType) generatePairwiseMatrixInput,
    required TResult Function(
            String? id, bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixCriteria,
    required TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixAlternative,
    required TResult Function() getAhpResult,
    required TResult Function() resetAhpResult,
  }) {
    return updatePairwiseMatrixAlternative(
        id, alternativeId, isLeftMoreImportant, referenceValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String schoolType)? generatePairwiseMatrixInput,
    TResult? Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult? Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult? Function()? getAhpResult,
    TResult? Function()? resetAhpResult,
  }) {
    return updatePairwiseMatrixAlternative?.call(
        id, alternativeId, isLeftMoreImportant, referenceValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String schoolType)? generatePairwiseMatrixInput,
    TResult Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult Function()? getAhpResult,
    TResult Function()? resetAhpResult,
    required TResult orElse(),
  }) {
    if (updatePairwiseMatrixAlternative != null) {
      return updatePairwiseMatrixAlternative(
          id, alternativeId, isLeftMoreImportant, referenceValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneratePairwiseMatrixInputEvent value)
        generatePairwiseMatrixInput,
    required TResult Function(UpdatePairwiseMatrixCriteriaEvent value)
        updatePairwiseMatrixCriteria,
    required TResult Function(UpdatePairwiseMatrixAlternativeEvent value)
        updatePairwiseMatrixAlternative,
    required TResult Function(GetAhpResultEvent value) getAhpResult,
    required TResult Function(ResetAhpResultEvent value) resetAhpResult,
  }) {
    return updatePairwiseMatrixAlternative(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult? Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult? Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult? Function(GetAhpResultEvent value)? getAhpResult,
    TResult? Function(ResetAhpResultEvent value)? resetAhpResult,
  }) {
    return updatePairwiseMatrixAlternative?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult Function(GetAhpResultEvent value)? getAhpResult,
    TResult Function(ResetAhpResultEvent value)? resetAhpResult,
    required TResult orElse(),
  }) {
    if (updatePairwiseMatrixAlternative != null) {
      return updatePairwiseMatrixAlternative(this);
    }
    return orElse();
  }
}

abstract class UpdatePairwiseMatrixAlternativeEvent implements AhpEvent {
  const factory UpdatePairwiseMatrixAlternativeEvent(
          {required final String? id,
          required final String? alternativeId,
          required final bool isLeftMoreImportant,
          required final int referenceValue}) =
      _$UpdatePairwiseMatrixAlternativeEventImpl;

  String? get id;
  String? get alternativeId;
  bool get isLeftMoreImportant;
  int get referenceValue;

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePairwiseMatrixAlternativeEventImplCopyWith<
          _$UpdatePairwiseMatrixAlternativeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAhpResultEventImplCopyWith<$Res> {
  factory _$$GetAhpResultEventImplCopyWith(_$GetAhpResultEventImpl value,
          $Res Function(_$GetAhpResultEventImpl) then) =
      __$$GetAhpResultEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAhpResultEventImplCopyWithImpl<$Res>
    extends _$AhpEventCopyWithImpl<$Res, _$GetAhpResultEventImpl>
    implements _$$GetAhpResultEventImplCopyWith<$Res> {
  __$$GetAhpResultEventImplCopyWithImpl(_$GetAhpResultEventImpl _value,
      $Res Function(_$GetAhpResultEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAhpResultEventImpl implements GetAhpResultEvent {
  const _$GetAhpResultEventImpl();

  @override
  String toString() {
    return 'AhpEvent.getAhpResult()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAhpResultEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String schoolType) generatePairwiseMatrixInput,
    required TResult Function(
            String? id, bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixCriteria,
    required TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixAlternative,
    required TResult Function() getAhpResult,
    required TResult Function() resetAhpResult,
  }) {
    return getAhpResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String schoolType)? generatePairwiseMatrixInput,
    TResult? Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult? Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult? Function()? getAhpResult,
    TResult? Function()? resetAhpResult,
  }) {
    return getAhpResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String schoolType)? generatePairwiseMatrixInput,
    TResult Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult Function()? getAhpResult,
    TResult Function()? resetAhpResult,
    required TResult orElse(),
  }) {
    if (getAhpResult != null) {
      return getAhpResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneratePairwiseMatrixInputEvent value)
        generatePairwiseMatrixInput,
    required TResult Function(UpdatePairwiseMatrixCriteriaEvent value)
        updatePairwiseMatrixCriteria,
    required TResult Function(UpdatePairwiseMatrixAlternativeEvent value)
        updatePairwiseMatrixAlternative,
    required TResult Function(GetAhpResultEvent value) getAhpResult,
    required TResult Function(ResetAhpResultEvent value) resetAhpResult,
  }) {
    return getAhpResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult? Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult? Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult? Function(GetAhpResultEvent value)? getAhpResult,
    TResult? Function(ResetAhpResultEvent value)? resetAhpResult,
  }) {
    return getAhpResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult Function(GetAhpResultEvent value)? getAhpResult,
    TResult Function(ResetAhpResultEvent value)? resetAhpResult,
    required TResult orElse(),
  }) {
    if (getAhpResult != null) {
      return getAhpResult(this);
    }
    return orElse();
  }
}

abstract class GetAhpResultEvent implements AhpEvent {
  const factory GetAhpResultEvent() = _$GetAhpResultEventImpl;
}

/// @nodoc
abstract class _$$ResetAhpResultEventImplCopyWith<$Res> {
  factory _$$ResetAhpResultEventImplCopyWith(_$ResetAhpResultEventImpl value,
          $Res Function(_$ResetAhpResultEventImpl) then) =
      __$$ResetAhpResultEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetAhpResultEventImplCopyWithImpl<$Res>
    extends _$AhpEventCopyWithImpl<$Res, _$ResetAhpResultEventImpl>
    implements _$$ResetAhpResultEventImplCopyWith<$Res> {
  __$$ResetAhpResultEventImplCopyWithImpl(_$ResetAhpResultEventImpl _value,
      $Res Function(_$ResetAhpResultEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AhpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetAhpResultEventImpl implements ResetAhpResultEvent {
  const _$ResetAhpResultEventImpl();

  @override
  String toString() {
    return 'AhpEvent.resetAhpResult()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetAhpResultEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String schoolType) generatePairwiseMatrixInput,
    required TResult Function(
            String? id, bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixCriteria,
    required TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)
        updatePairwiseMatrixAlternative,
    required TResult Function() getAhpResult,
    required TResult Function() resetAhpResult,
  }) {
    return resetAhpResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String schoolType)? generatePairwiseMatrixInput,
    TResult? Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult? Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult? Function()? getAhpResult,
    TResult? Function()? resetAhpResult,
  }) {
    return resetAhpResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String schoolType)? generatePairwiseMatrixInput,
    TResult Function(String? id, bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixCriteria,
    TResult Function(String? id, String? alternativeId,
            bool isLeftMoreImportant, int referenceValue)?
        updatePairwiseMatrixAlternative,
    TResult Function()? getAhpResult,
    TResult Function()? resetAhpResult,
    required TResult orElse(),
  }) {
    if (resetAhpResult != null) {
      return resetAhpResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneratePairwiseMatrixInputEvent value)
        generatePairwiseMatrixInput,
    required TResult Function(UpdatePairwiseMatrixCriteriaEvent value)
        updatePairwiseMatrixCriteria,
    required TResult Function(UpdatePairwiseMatrixAlternativeEvent value)
        updatePairwiseMatrixAlternative,
    required TResult Function(GetAhpResultEvent value) getAhpResult,
    required TResult Function(ResetAhpResultEvent value) resetAhpResult,
  }) {
    return resetAhpResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult? Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult? Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult? Function(GetAhpResultEvent value)? getAhpResult,
    TResult? Function(ResetAhpResultEvent value)? resetAhpResult,
  }) {
    return resetAhpResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneratePairwiseMatrixInputEvent value)?
        generatePairwiseMatrixInput,
    TResult Function(UpdatePairwiseMatrixCriteriaEvent value)?
        updatePairwiseMatrixCriteria,
    TResult Function(UpdatePairwiseMatrixAlternativeEvent value)?
        updatePairwiseMatrixAlternative,
    TResult Function(GetAhpResultEvent value)? getAhpResult,
    TResult Function(ResetAhpResultEvent value)? resetAhpResult,
    required TResult orElse(),
  }) {
    if (resetAhpResult != null) {
      return resetAhpResult(this);
    }
    return orElse();
  }
}

abstract class ResetAhpResultEvent implements AhpEvent {
  const factory ResetAhpResultEvent() = _$ResetAhpResultEventImpl;
}
