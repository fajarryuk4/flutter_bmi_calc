import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_bmi_calc/model/body_mass_index.dart';

part 'bmi_service.g.dart';

@RestApi(baseUrl: "https://fitness-calculator.p.rapidapi.com/bmi")
abstract class BMIClient {
  factory BMIClient(Dio dio, {String baseUrl}) = _BMIClient;

  @GET("")
  @Headers(<String, dynamic>{
    'x-rapidapi-key': "ccdd72891fmsh2c2cf3d5c9cf473p12bb4bjsnd35116252422",
    'x-rapidapi-host': "fitness-calculator.p.rapidapi.com"
  })
  Future<BodyMassIndex> getCalculation();
}