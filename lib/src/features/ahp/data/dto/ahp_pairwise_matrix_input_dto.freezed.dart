// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ahp_pairwise_matrix_input_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AhpPairwiseMatrixInputDto {
  List<PairwiseComparisonInput<Criteria>> get inputCriteria =>
      throw _privateConstructorUsedError;
  List<PairwiseAlternativeInput> get inputAlternative =>
      throw _privateConstructorUsedError;

  /// Create a copy of AhpPairwiseMatrixInputDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AhpPairwiseMatrixInputDtoCopyWith<AhpPairwiseMatrixInputDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AhpPairwiseMatrixInputDtoCopyWith<$Res> {
  factory $AhpPairwiseMatrixInputDtoCopyWith(AhpPairwiseMatrixInputDto value,
          $Res Function(AhpPairwiseMatrixInputDto) then) =
      _$AhpPairwiseMatrixInputDtoCopyWithImpl<$Res, AhpPairwiseMatrixInputDto>;
  @useResult
  $Res call(
      {List<PairwiseComparisonInput<Criteria>> inputCriteria,
      List<PairwiseAlternativeInput> inputAlternative});
}

/// @nodoc
class _$AhpPairwiseMatrixInputDtoCopyWithImpl<$Res,
        $Val extends AhpPairwiseMatrixInputDto>
    implements $AhpPairwiseMatrixInputDtoCopyWith<$Res> {
  _$AhpPairwiseMatrixInputDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AhpPairwiseMatrixInputDto
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
abstract class _$$AhpPairwiseMatrixInputDtoImplCopyWith<$Res>
    implements $AhpPairwiseMatrixInputDtoCopyWith<$Res> {
  factory _$$AhpPairwiseMatrixInputDtoImplCopyWith(
          _$AhpPairwiseMatrixInputDtoImpl value,
          $Res Function(_$AhpPairwiseMatrixInputDtoImpl) then) =
      __$$AhpPairwiseMatrixInputDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PairwiseComparisonInput<Criteria>> inputCriteria,
      List<PairwiseAlternativeInput> inputAlternative});
}

/// @nodoc
class __$$AhpPairwiseMatrixInputDtoImplCopyWithImpl<$Res>
    extends _$AhpPairwiseMatrixInputDtoCopyWithImpl<$Res,
        _$AhpPairwiseMatrixInputDtoImpl>
    implements _$$AhpPairwiseMatrixInputDtoImplCopyWith<$Res> {
  __$$AhpPairwiseMatrixInputDtoImplCopyWithImpl(
      _$AhpPairwiseMatrixInputDtoImpl _value,
      $Res Function(_$AhpPairwiseMatrixInputDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AhpPairwiseMatrixInputDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputCriteria = null,
    Object? inputAlternative = null,
  }) {
    return _then(_$AhpPairwiseMatrixInputDtoImpl(
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

class _$AhpPairwiseMatrixInputDtoImpl implements _AhpPairwiseMatrixInputDto {
  _$AhpPairwiseMatrixInputDtoImpl(
      {required final List<PairwiseComparisonInput<Criteria>> inputCriteria,
      required final List<PairwiseAlternativeInput> inputAlternative})
      : _inputCriteria = inputCriteria,
        _inputAlternative = inputAlternative;

  final List<PairwiseComparisonInput<Criteria>> _inputCriteria;
  @override
  List<PairwiseComparisonInput<Criteria>> get inputCriteria {
    if (_inputCriteria is EqualUnmodifiableListView) return _inputCriteria;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputCriteria);
  }

  final List<PairwiseAlternativeInput> _inputAlternative;
  @override
  List<PairwiseAlternativeInput> get inputAlternative {
    if (_inputAlternative is EqualUnmodifiableListView)
      return _inputAlternative;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputAlternative);
  }

  @override
  String toString() {
    return 'AhpPairwiseMatrixInputDto(inputCriteria: $inputCriteria, inputAlternative: $inputAlternative)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AhpPairwiseMatrixInputDtoImpl &&
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

  /// Create a copy of AhpPairwiseMatrixInputDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AhpPairwiseMatrixInputDtoImplCopyWith<_$AhpPairwiseMatrixInputDtoImpl>
      get copyWith => __$$AhpPairwiseMatrixInputDtoImplCopyWithImpl<
          _$AhpPairwiseMatrixInputDtoImpl>(this, _$identity);
}

abstract class _AhpPairwiseMatrixInputDto implements AhpPairwiseMatrixInputDto {
  factory _AhpPairwiseMatrixInputDto(
          {required final List<PairwiseComparisonInput<Criteria>> inputCriteria,
          required final List<PairwiseAlternativeInput> inputAlternative}) =
      _$AhpPairwiseMatrixInputDtoImpl;

  @override
  List<PairwiseComparisonInput<Criteria>> get inputCriteria;
  @override
  List<PairwiseAlternativeInput> get inputAlternative;

  /// Create a copy of AhpPairwiseMatrixInputDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AhpPairwiseMatrixInputDtoImplCopyWith<_$AhpPairwiseMatrixInputDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
