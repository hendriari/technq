// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ahp_result_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AhpResultDetailDto _$AhpResultDetailDtoFromJson(Map<String, dynamic> json) {
  return _AhpResultDetailDto.fromJson(json);
}

/// @nodoc
mixin _$AhpResultDetailDto {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;

  /// Serializes this AhpResultDetailDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AhpResultDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AhpResultDetailDtoCopyWith<AhpResultDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AhpResultDetailDtoCopyWith<$Res> {
  factory $AhpResultDetailDtoCopyWith(
          AhpResultDetailDto value, $Res Function(AhpResultDetailDto) then) =
      _$AhpResultDetailDtoCopyWithImpl<$Res, AhpResultDetailDto>;
  @useResult
  $Res call({String? id, String? name, double? value});
}

/// @nodoc
class _$AhpResultDetailDtoCopyWithImpl<$Res, $Val extends AhpResultDetailDto>
    implements $AhpResultDetailDtoCopyWith<$Res> {
  _$AhpResultDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AhpResultDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AhpResultDetailDtoImplCopyWith<$Res>
    implements $AhpResultDetailDtoCopyWith<$Res> {
  factory _$$AhpResultDetailDtoImplCopyWith(_$AhpResultDetailDtoImpl value,
          $Res Function(_$AhpResultDetailDtoImpl) then) =
      __$$AhpResultDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, double? value});
}

/// @nodoc
class __$$AhpResultDetailDtoImplCopyWithImpl<$Res>
    extends _$AhpResultDetailDtoCopyWithImpl<$Res, _$AhpResultDetailDtoImpl>
    implements _$$AhpResultDetailDtoImplCopyWith<$Res> {
  __$$AhpResultDetailDtoImplCopyWithImpl(_$AhpResultDetailDtoImpl _value,
      $Res Function(_$AhpResultDetailDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AhpResultDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$AhpResultDetailDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AhpResultDetailDtoImpl implements _AhpResultDetailDto {
  const _$AhpResultDetailDtoImpl(
      {required this.id, required this.name, required this.value});

  factory _$AhpResultDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AhpResultDetailDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final double? value;

  @override
  String toString() {
    return 'AhpResultDetailDto(id: $id, name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AhpResultDetailDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, value);

  /// Create a copy of AhpResultDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AhpResultDetailDtoImplCopyWith<_$AhpResultDetailDtoImpl> get copyWith =>
      __$$AhpResultDetailDtoImplCopyWithImpl<_$AhpResultDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AhpResultDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _AhpResultDetailDto implements AhpResultDetailDto {
  const factory _AhpResultDetailDto(
      {required final String? id,
      required final String? name,
      required final double? value}) = _$AhpResultDetailDtoImpl;

  factory _AhpResultDetailDto.fromJson(Map<String, dynamic> json) =
      _$AhpResultDetailDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  double? get value;

  /// Create a copy of AhpResultDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AhpResultDetailDtoImplCopyWith<_$AhpResultDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
