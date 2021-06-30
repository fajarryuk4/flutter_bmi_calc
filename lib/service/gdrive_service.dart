import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gdrive_service.g.dart';

@RestApi()
abstract class GDriveClient {
  factory GDriveClient(Dio dio, {String baseUrl}) = _GDriveClient;

  @POST("")
  Future<dynamic> createConnection(@Headers() Map<String, dynamic> payload);
}