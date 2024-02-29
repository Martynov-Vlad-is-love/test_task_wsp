// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionDataImpl _$$ConditionDataImplFromJson(Map<String, dynamic> json) =>
    _$ConditionDataImpl(
      id: json['id'] as String,
      field: (json['field'] as List<dynamic>).map((e) => e as String).toList(),
      start: CustomPoint.fromJson(json['start'] as Map<String, dynamic>),
      end: CustomPoint.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConditionDataImplToJson(_$ConditionDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field': instance.field,
      'start': instance.start,
      'end': instance.end,
    };
