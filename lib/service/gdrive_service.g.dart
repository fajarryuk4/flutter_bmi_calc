// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gdrive_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GDriveClient implements GDriveClient {
  _GDriveClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<dynamic> createConnection(payload) async {
    ArgumentError.checkNotNull(payload, 'payload');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request('',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return value;
  }
}
