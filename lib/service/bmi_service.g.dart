// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmi_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _BMIClient implements BMIClient {
  _BMIClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://fitness-calculator.p.rapidapi.com/bmi';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<BodyMassIndex> getCalculation() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{
              r'x-rapidapi-key':
                  'ccdd72891fmsh2c2cf3d5c9cf473p12bb4bjsnd35116252422',
              r'x-rapidapi-host': 'fitness-calculator.p.rapidapi.com'
            },
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BodyMassIndex.fromJson(_result.data);
    return value;
  }
}
