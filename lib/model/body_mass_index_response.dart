import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'body_mass_index_response.g.dart';

@JsonSerializable()
class BodyMassIndexResponse extends Equatable{
  double _bmi;
  String _health;
  String _healthyBmiRange;

  BodyMassIndexResponse({double bmi, String health, String healthyBmiRange}) {
    this._bmi = bmi;
    this._health = health;
    this._healthyBmiRange = healthyBmiRange;
  }

  double get bmi => _bmi;
  set bmi(double bmi) => _bmi = bmi;
  String get health => _health;
  set health(String health) => _health = health;
  String get healthyBmiRange => _healthyBmiRange;
  set healthyBmiRange(String healthyBmiRange) =>
      _healthyBmiRange = healthyBmiRange;

  factory BodyMassIndexResponse.fromJson(Map<String, dynamic> json) =>
      _$BodyMassIndexResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BodyMassIndexResponseToJson(this);

  @override
  // TODO: implement props
  List<Object> get props => [_bmi, _health, _healthyBmiRange];
}
