import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'body_mass_index.g.dart';

@JsonSerializable()
class BodyMassIndex extends Equatable{
  final String age;
  final String weight;
  final String height;

  BodyMassIndex({this.age, this.weight, this.height});

  factory BodyMassIndex.fromJson(Map<String, dynamic> json) =>
      _$BodyMassIndexFromJson(json);

  Map<String, dynamic> toJson() => _$BodyMassIndexToJson(this);

  @override
  List<Object> get props => [age, weight, height];
}