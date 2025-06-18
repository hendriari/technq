// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ahp_result_detail_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AhpResultDetailEntities {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;

  /// Create a copy of AhpResultDetailEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AhpResultDetailEntitiesCopyWith<AhpResultDetailEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AhpResultDetailEntitiesCopyWith<$Res> {
  factory $AhpResultDetailEntitiesCopyWith(AhpResultDetailEntities value,
          $Res Function(AhpResultDetailEntities) then) =
      _$AhpResultDetailEntitiesCopyWithImpl<$Res, AhpResultDetailEntities>;
  @useResult
  $Res call({String? id, String? name, double? value});
}

/// @nodoc
class _$AhpResultDetailEntitiesCopyWithImpl<$Res,
        $Val extends AhpResultDetailEntities>
    implements $AhpResultDetailEntitiesCopyWith<$Res> {
  _$AhpResultDetailEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AhpResultDetailEntities
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
abstract class _$$AhpResultDetailImplCopyWith<$Res>
    implements $AhpResultDetailEntitiesCopyWith<$Res> {
  factory _$$AhpResultDetailImplCopyWith(_$AhpResultDetailImpl value,
          $Res Function(_$AhpResultDetailImpl) then) =
      __$$AhpResultDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, double? value});
}

/// @nodoc
class __$$AhpResultDetailImplCopyWithImpl<$Res>
    extends _$AhpResultDetailEntitiesCopyWithImpl<$Res, _$AhpResultDetailImpl>
    implements _$$AhpResultDetailImplCopyWith<$Res> {
  __$$AhpResultDetailImplCopyWithImpl(
      _$AhpResultDetailImpl _value, $Res Function(_$AhpResultDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AhpResultDetailEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$AhpResultDetailImpl(
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

class _$AhpResultDetailImpl implements _AhpResultDetail {
  const _$AhpResultDetailImpl(
      {required this.id, required this.name, required this.value});

  @override
  final String? id;
  @override
  final String? name;
  @override
  final double? value;

  @override
  String toString() {
    return 'AhpResultDetailEntities(id: $id, name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AhpResultDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, value);

  /// Create a copy of AhpResultDetailEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AhpResultDetailImplCopyWith<_$AhpResultDetailImpl> get copyWith =>
      __$$AhpResultDetailImplCopyWithImpl<_$AhpResultDetailImpl>(
          this, _$identity);
}

abstract class _AhpResultDetail implements AhpResultDetailEntities {
  const factory _AhpResultDetail(
      {required final String? id,
      required final String? name,
      required final double? value}) = _$AhpResultDetailImpl;

  @override
  String? get id;
  @override
  String? get name;
  @override
  double? get value;

  /// Create a copy of AhpResultDetailEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AhpResultDetailImplCopyWith<_$AhpResultDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
