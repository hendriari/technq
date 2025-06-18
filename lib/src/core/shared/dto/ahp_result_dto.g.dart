// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ahp_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AhpResultDtoImpl _$$AhpResultDtoImplFromJson(Map<String, dynamic> json) =>
    _$AhpResultDtoImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      userName: json['user_name'] as String?,
      dateUpdate: json['date_update'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => AhpResultDetailDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isConsistentCriteria: json['is_consistent_criteria'] as bool,
      consistencyCriteriaRatio:
          (json['consistency_criteria_ratio'] as num).toDouble(),
      isConsistentAlternative: json['is_consistent_alternative'] as bool,
      consistencyAlternativeRatio:
          (json['consistency_alternative_ratio'] as num).toDouble(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$AhpResultDtoImplToJson(_$AhpResultDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'date_update': instance.dateUpdate,
      'results': instance.results.map((e) => e.toJson()).toList(),
      'is_consistent_criteria': instance.isConsistentCriteria,
      'consistency_criteria_ratio': instance.consistencyCriteriaRatio,
      'is_consistent_alternative': instance.isConsistentAlternative,
      'consistency_alternative_ratio': instance.consistencyAlternativeRatio,
      'note': instance.note,
    };
