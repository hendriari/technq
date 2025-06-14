// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fakultas_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FakultasEntities {
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Create a copy of FakultasEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FakultasEntitiesCopyWith<FakultasEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FakultasEntitiesCopyWith<$Res> {
  factory $FakultasEntitiesCopyWith(
          FakultasEntities value, $Res Function(FakultasEntities) then) =
      _$FakultasEntitiesCopyWithImpl<$Res, FakultasEntities>;
  @useResult
  $Res call({String? id, String? image, String? name, String? description});
}

/// @nodoc
class _$FakultasEntitiesCopyWithImpl<$Res, $Val extends FakultasEntities>
    implements $FakultasEntitiesCopyWith<$Res> {
  _$FakultasEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FakultasEntities
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
abstract class _$$FakultasEntitiesImplCopyWith<$Res>
    implements $FakultasEntitiesCopyWith<$Res> {
  factory _$$FakultasEntitiesImplCopyWith(_$FakultasEntitiesImpl value,
          $Res Function(_$FakultasEntitiesImpl) then) =
      __$$FakultasEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? image, String? name, String? description});
}

/// @nodoc
class __$$FakultasEntitiesImplCopyWithImpl<$Res>
    extends _$FakultasEntitiesCopyWithImpl<$Res, _$FakultasEntitiesImpl>
    implements _$$FakultasEntitiesImplCopyWith<$Res> {
  __$$FakultasEntitiesImplCopyWithImpl(_$FakultasEntitiesImpl _value,
      $Res Function(_$FakultasEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FakultasEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$FakultasEntitiesImpl(
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

class _$FakultasEntitiesImpl implements _FakultasEntities {
  const _$FakultasEntitiesImpl(
      {required this.id,
      required this.image,
      required this.name,
      required this.description});

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
    return 'FakultasEntities(id: $id, image: $image, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakultasEntitiesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, image, name, description);

  /// Create a copy of FakultasEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FakultasEntitiesImplCopyWith<_$FakultasEntitiesImpl> get copyWith =>
      __$$FakultasEntitiesImplCopyWithImpl<_$FakultasEntitiesImpl>(
          this, _$identity);
}

abstract class _FakultasEntities implements FakultasEntities {
  const factory _FakultasEntities(
      {required final String? id,
      required final String? image,
      required final String? name,
      required final String? description}) = _$FakultasEntitiesImpl;

  @override
  String? get id;
  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get description;

  /// Create a copy of FakultasEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FakultasEntitiesImplCopyWith<_$FakultasEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
