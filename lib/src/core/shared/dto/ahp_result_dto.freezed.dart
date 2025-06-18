// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ahp_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AhpResultDto _$AhpResultDtoFromJson(Map<String, dynamic> json) {
  return _AhpResultDto.fromJson(json);
}

/// @nodoc
mixin _$AhpResultDto {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get dateUpdate => throw _privateConstructorUsedError;
  List<AhpResultDetailDto> get results => throw _privateConstructorUsedError;
  bool get isConsistentCriteria => throw _privateConstructorUsedError;
  double get consistencyCriteriaRatio => throw _privateConstructorUsedError;
  bool get isConsistentAlternative => throw _privateConstructorUsedError;
  double get consistencyAlternativeRatio => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this AhpResultDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AhpResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AhpResultDtoCopyWith<AhpResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AhpResultDtoCopyWith<$Res> {
  factory $AhpResultDtoCopyWith(
          AhpResultDto value, $Res Function(AhpResultDto) then) =
      _$AhpResultDtoCopyWithImpl<$Res, AhpResultDto>;
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? userName,
      String? dateUpdate,
      List<AhpResultDetailDto> results,
      bool isConsistentCriteria,
      double consistencyCriteriaRatio,
      bool isConsistentAlternative,
      double consistencyAlternativeRatio,
      String? note});
}

/// @nodoc
class _$AhpResultDtoCopyWithImpl<$Res, $Val extends AhpResultDto>
    implements $AhpResultDtoCopyWith<$Res> {
  _$AhpResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AhpResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? dateUpdate = freezed,
    Object? results = null,
    Object? isConsistentCriteria = null,
    Object? consistencyCriteriaRatio = null,
    Object? isConsistentAlternative = null,
    Object? consistencyAlternativeRatio = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUpdate: freezed == dateUpdate
          ? _value.dateUpdate
          : dateUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AhpResultDetailDto>,
      isConsistentCriteria: null == isConsistentCriteria
          ? _value.isConsistentCriteria
          : isConsistentCriteria // ignore: cast_nullable_to_non_nullable
              as bool,
      consistencyCriteriaRatio: null == consistencyCriteriaRatio
          ? _value.consistencyCriteriaRatio
          : consistencyCriteriaRatio // ignore: cast_nullable_to_non_nullable
              as double,
      isConsistentAlternative: null == isConsistentAlternative
          ? _value.isConsistentAlternative
          : isConsistentAlternative // ignore: cast_nullable_to_non_nullable
              as bool,
      consistencyAlternativeRatio: null == consistencyAlternativeRatio
          ? _value.consistencyAlternativeRatio
          : consistencyAlternativeRatio // ignore: cast_nullable_to_non_nullable
              as double,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AhpResultDtoImplCopyWith<$Res>
    implements $AhpResultDtoCopyWith<$Res> {
  factory _$$AhpResultDtoImplCopyWith(
          _$AhpResultDtoImpl value, $Res Function(_$AhpResultDtoImpl) then) =
      __$$AhpResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? userName,
      String? dateUpdate,
      List<AhpResultDetailDto> results,
      bool isConsistentCriteria,
      double consistencyCriteriaRatio,
      bool isConsistentAlternative,
      double consistencyAlternativeRatio,
      String? note});
}

/// @nodoc
class __$$AhpResultDtoImplCopyWithImpl<$Res>
    extends _$AhpResultDtoCopyWithImpl<$Res, _$AhpResultDtoImpl>
    implements _$$AhpResultDtoImplCopyWith<$Res> {
  __$$AhpResultDtoImplCopyWithImpl(
      _$AhpResultDtoImpl _value, $Res Function(_$AhpResultDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AhpResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? dateUpdate = freezed,
    Object? results = null,
    Object? isConsistentCriteria = null,
    Object? consistencyCriteriaRatio = null,
    Object? isConsistentAlternative = null,
    Object? consistencyAlternativeRatio = null,
    Object? note = freezed,
  }) {
    return _then(_$AhpResultDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUpdate: freezed == dateUpdate
          ? _value.dateUpdate
          : dateUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AhpResultDetailDto>,
      isConsistentCriteria: null == isConsistentCriteria
          ? _value.isConsistentCriteria
          : isConsistentCriteria // ignore: cast_nullable_to_non_nullable
              as bool,
      consistencyCriteriaRatio: null == consistencyCriteriaRatio
          ? _value.consistencyCriteriaRatio
          : consistencyCriteriaRatio // ignore: cast_nullable_to_non_nullable
              as double,
      isConsistentAlternative: null == isConsistentAlternative
          ? _value.isConsistentAlternative
          : isConsistentAlternative // ignore: cast_nullable_to_non_nullable
              as bool,
      consistencyAlternativeRatio: null == consistencyAlternativeRatio
          ? _value.consistencyAlternativeRatio
          : consistencyAlternativeRatio // ignore: cast_nullable_to_non_nullable
              as double,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AhpResultDtoImpl implements _AhpResultDto {
  const _$AhpResultDtoImpl(
      {required this.id,
      required this.userId,
      required this.userName,
      required this.dateUpdate,
      required final List<AhpResultDetailDto> results,
      required this.isConsistentCriteria,
      required this.consistencyCriteriaRatio,
      required this.isConsistentAlternative,
      required this.consistencyAlternativeRatio,
      required this.note})
      : _results = results;

  factory _$AhpResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AhpResultDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? dateUpdate;
  final List<AhpResultDetailDto> _results;
  @override
  List<AhpResultDetailDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final bool isConsistentCriteria;
  @override
  final double consistencyCriteriaRatio;
  @override
  final bool isConsistentAlternative;
  @override
  final double consistencyAlternativeRatio;
  @override
  final String? note;

  @override
  String toString() {
    return 'AhpResultDto(id: $id, userId: $userId, userName: $userName, dateUpdate: $dateUpdate, results: $results, isConsistentCriteria: $isConsistentCriteria, consistencyCriteriaRatio: $consistencyCriteriaRatio, isConsistentAlternative: $isConsistentAlternative, consistencyAlternativeRatio: $consistencyAlternativeRatio, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AhpResultDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.dateUpdate, dateUpdate) ||
                other.dateUpdate == dateUpdate) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.isConsistentCriteria, isConsistentCriteria) ||
                other.isConsistentCriteria == isConsistentCriteria) &&
            (identical(
                    other.consistencyCriteriaRatio, consistencyCriteriaRatio) ||
                other.consistencyCriteriaRatio == consistencyCriteriaRatio) &&
            (identical(
                    other.isConsistentAlternative, isConsistentAlternative) ||
                other.isConsistentAlternative == isConsistentAlternative) &&
            (identical(other.consistencyAlternativeRatio,
                    consistencyAlternativeRatio) ||
                other.consistencyAlternativeRatio ==
                    consistencyAlternativeRatio) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      userName,
      dateUpdate,
      const DeepCollectionEquality().hash(_results),
      isConsistentCriteria,
      consistencyCriteriaRatio,
      isConsistentAlternative,
      consistencyAlternativeRatio,
      note);

  /// Create a copy of AhpResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AhpResultDtoImplCopyWith<_$AhpResultDtoImpl> get copyWith =>
      __$$AhpResultDtoImplCopyWithImpl<_$AhpResultDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AhpResultDtoImplToJson(
      this,
    );
  }
}

abstract class _AhpResultDto implements AhpResultDto {
  const factory _AhpResultDto(
      {required final String? id,
      required final String? userId,
      required final String? userName,
      required final String? dateUpdate,
      required final List<AhpResultDetailDto> results,
      required final bool isConsistentCriteria,
      required final double consistencyCriteriaRatio,
      required final bool isConsistentAlternative,
      required final double consistencyAlternativeRatio,
      required final String? note}) = _$AhpResultDtoImpl;

  factory _AhpResultDto.fromJson(Map<String, dynamic> json) =
      _$AhpResultDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get dateUpdate;
  @override
  List<AhpResultDetailDto> get results;
  @override
  bool get isConsistentCriteria;
  @override
  double get consistencyCriteriaRatio;
  @override
  bool get isConsistentAlternative;
  @override
  double get consistencyAlternativeRatio;
  @override
  String? get note;

  /// Create a copy of AhpResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AhpResultDtoImplCopyWith<_$AhpResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
