// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ahp_result_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AhpResultDetailDtoImpl _$$AhpResultDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AhpResultDetailDtoImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AhpResultDetailDtoImplToJson(
        _$AhpResultDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
    };
