// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_mass_index_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BodyMassIndexResponse _$BodyMassIndexResponseFromJson(
    Map<String, dynamic> json) {
  return BodyMassIndexResponse(
    bmi: (json['bmi'] as num)?.toDouble(),
    health: json['health'] as String,
    healthyBmiRange: json['healthyBmiRange'] as String,
  );
}

Map<String, dynamic> _$BodyMassIndexResponseToJson(
        BodyMassIndexResponse instance) =>
    <String, dynamic>{
      'bmi': instance.bmi,
      'health': instance.health,
      'healthyBmiRange': instance.healthyBmiRange,
    };
