// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_mass_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BodyMassIndex _$BodyMassIndexFromJson(Map<String, dynamic> json) {
  return BodyMassIndex(
    age: json['age'] as String,
    weight: json['weight'] as String,
    height: json['height'] as String,
  );
}

Map<String, dynamic> _$BodyMassIndexToJson(BodyMassIndex instance) =>
    <String, dynamic>{
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
    };
