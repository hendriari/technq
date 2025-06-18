// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ahp_pairwise_matrix_input_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AhpPairwiseMatrixInputEntities {
  List<PairwiseComparisonInput<Criteria>> get inputCriteria =>
      throw _privateConstructorUsedError;
  List<PairwiseAlternativeInput> get inputAlternative =>
      throw _privateConstructorUsedError;

  /// Create a copy of AhpPairwiseMatrixInputEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AhpPairwiseMatrixInputEntitiesCopyWith<AhpPairwiseMatrixInputEntities>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AhpPairwiseMatrixInputEntitiesCopyWith<$Res> {
  factory $AhpPairwiseMatrixInputEntitiesCopyWith(
          AhpPairwiseMatrixInputEntities value,
          $Res Function(AhpPairwiseMatrixInputEntities) then) =
      _$AhpPairwiseMatrixInputEntitiesCopyWithImpl<$Res,
          AhpPairwiseMatrixInputEntities>;
  @useResult
  $Res call(
      {List<PairwiseComparisonInput<Criteria>> inputCriteria,
      List<PairwiseAlternativeInput> inputAlternative});
}

/// @nodoc
class _$AhpPairwiseMatrixInputEntitiesCopyWithImpl<$Res,
        $Val extends AhpPairwiseMatrixInputEntities>
    implements $AhpPairwiseMatrixInputEntitiesCopyWith<$Res> {
  _$AhpPairwiseMatrixInputEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AhpPairwiseMatrixInputEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputCriteria = null,
    Object? inputAlternative = null,
  }) {
    return _then(_value.copyWith(
      inputCriteria: null == inputCriteria
          ? _value.inputCriteria
          : inputCriteria // ignore: cast_nullable_to_non_nullable
              as List<PairwiseComparisonInput<Criteria>>,
      inputAlternative: null == inputAlternative
          ? _value.inputAlternative
          : inputAlternative // ignore: cast_nullable_to_non_nullable
              as List<PairwiseAlternativeInput>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AhpPairwiseMatrixInputEntitiesImplCopyWith<$Res>
    implements $AhpPairwiseMatrixInputEntitiesCopyWith<$Res> {
  factory _$$AhpPairwiseMatrixInputEntitiesImplCopyWith(
          _$AhpPairwiseMatrixInputEntitiesImpl value,
          $Res Function(_$AhpPairwiseMatrixInputEntitiesImpl) then) =
      __$$AhpPairwiseMatrixInputEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PairwiseComparisonInput<Criteria>> inputCriteria,
      List<PairwiseAlternativeInput> inputAlternative});
}

/// @nodoc
class __$$AhpPairwiseMatrixInputEntitiesImplCopyWithImpl<$Res>
    extends _$AhpPairwiseMatrixInputEntitiesCopyWithImpl<$Res,
        _$AhpPairwiseMatrixInputEntitiesImpl>
    implements _$$AhpPairwiseMatrixInputEntitiesImplCopyWith<$Res> {
  __$$AhpPairwiseMatrixInputEntitiesImplCopyWithImpl(
      _$AhpPairwiseMatrixInputEntitiesImpl _value,
      $Res Function(_$AhpPairwiseMatrixInputEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AhpPairwiseMatrixInputEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputCriteria = null,
    Object? inputAlternative = null,
  }) {
    return _then(_$AhpPairwiseMatrixInputEntitiesImpl(
      inputCriteria: null == inputCriteria
          ? _value._inputCriteria
          : inputCriteria // ignore: cast_nullable_to_non_nullable
              as List<PairwiseComparisonInput<Criteria>>,
      inputAlternative: null == inputAlternative
          ? _value._inputAlternative
          : inputAlternative // ignore: cast_nullable_to_non_nullable
              as List<PairwiseAlternativeInput>,
    ));
  }
}

/// @nodoc

class _$AhpPairwiseMatrixInputEntitiesImpl
    implements _AhpPairwiseMatrixInputEntities {
  _$AhpPairwiseMatrixInputEntitiesImpl(
      {final List<PairwiseComparisonInput<Criteria>> inputCriteria = const [],
      final List<PairwiseAlternativeInput> inputAlternative = const []})
      : _inputCriteria = inputCriteria,
        _inputAlternative = inputAlternative;

  final List<PairwiseComparisonInput<Criteria>> _inputCriteria;
  @override
  @JsonKey()
  List<PairwiseComparisonInput<Criteria>> get inputCriteria {
    if (_inputCriteria is EqualUnmodifiableListView) return _inputCriteria;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputCriteria);
  }

  final List<PairwiseAlternativeInput> _inputAlternative;
  @override
  @JsonKey()
  List<PairwiseAlternativeInput> get inputAlternative {
    if (_inputAlternative is EqualUnmodifiableListView)
      return _inputAlternative;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputAlternative);
  }

  @override
  String toString() {
    return 'AhpPairwiseMatrixInputEntities(inputCriteria: $inputCriteria, inputAlternative: $inputAlternative)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AhpPairwiseMatrixInputEntitiesImpl &&
            const DeepCollectionEquality()
                .equals(other._inputCriteria, _inputCriteria) &&
            const DeepCollectionEquality()
                .equals(other._inputAlternative, _inputAlternative));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_inputCriteria),
      const DeepCollectionEquality().hash(_inputAlternative));

  /// Create a copy of AhpPairwiseMatrixInputEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AhpPairwiseMatrixInputEntitiesImplCopyWith<
          _$AhpPairwiseMatrixInputEntitiesImpl>
      get copyWith => __$$AhpPairwiseMatrixInputEntitiesImplCopyWithImpl<
          _$AhpPairwiseMatrixInputEntitiesImpl>(this, _$identity);
}

abstract class _AhpPairwiseMatrixInputEntities
    implements AhpPairwiseMatrixInputEntities {
  factory _AhpPairwiseMatrixInputEntities(
          {final List<PairwiseComparisonInput<Criteria>> inputCriteria,
          final List<PairwiseAlternativeInput> inputAlternative}) =
      _$AhpPairwiseMatrixInputEntitiesImpl;

  @override
  List<PairwiseComparisonInput<Criteria>> get inputCriteria;
  @override
  List<PairwiseAlternativeInput> get inputAlternative;

  /// Create a copy of AhpPairwiseMatrixInputEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AhpPairwiseMatrixInputEntitiesImplCopyWith<
          _$AhpPairwiseMatrixInputEntitiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
