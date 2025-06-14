// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fakultas_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FakultasDto _$FakultasDtoFromJson(Map<String, dynamic> json) {
  return _FakultasDto.fromJson(json);
}

/// @nodoc
mixin _$FakultasDto {
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this FakultasDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FakultasDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FakultasDtoCopyWith<FakultasDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FakultasDtoCopyWith<$Res> {
  factory $FakultasDtoCopyWith(
          FakultasDto value, $Res Function(FakultasDto) then) =
      _$FakultasDtoCopyWithImpl<$Res, FakultasDto>;
  @useResult
  $Res call({String? id, String? image, String? name, String? description});
}

/// @nodoc
class _$FakultasDtoCopyWithImpl<$Res, $Val extends FakultasDto>
    implements $FakultasDtoCopyWith<$Res> {
  _$FakultasDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FakultasDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FakultasDtoImplCopyWith<$Res>
    implements $FakultasDtoCopyWith<$Res> {
  factory _$$FakultasDtoImplCopyWith(
          _$FakultasDtoImpl value, $Res Function(_$FakultasDtoImpl) then) =
      __$$FakultasDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? image, String? name, String? description});
}

/// @nodoc
class __$$FakultasDtoImplCopyWithImpl<$Res>
    extends _$FakultasDtoCopyWithImpl<$Res, _$FakultasDtoImpl>
    implements _$$FakultasDtoImplCopyWith<$Res> {
  __$$FakultasDtoImplCopyWithImpl(
      _$FakultasDtoImpl _value, $Res Function(_$FakultasDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FakultasDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$FakultasDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FakultasDtoImpl implements _FakultasDto {
  const _$FakultasDtoImpl(
      {required this.id,
      required this.image,
      required this.name,
      required this.description});

  factory _$FakultasDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FakultasDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'FakultasDto(id: $id, image: $image, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakultasDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name, description);

  /// Create a copy of FakultasDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FakultasDtoImplCopyWith<_$FakultasDtoImpl> get copyWith =>
      __$$FakultasDtoImplCopyWithImpl<_$FakultasDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FakultasDtoImplToJson(
      this,
    );
  }
}

abstract class _FakultasDto implements FakultasDto {
  const factory _FakultasDto(
      {required final String? id,
      required final String? image,
      required final String? name,
      required final String? description}) = _$FakultasDtoImpl;

  factory _FakultasDto.fromJson(Map<String, dynamic> json) =
      _$FakultasDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get description;

  /// Create a copy of FakultasDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FakultasDtoImplCopyWith<_$FakultasDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
