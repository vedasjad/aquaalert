import 'package:dio/dio.dart';

class DioClient {
  final Dio dio;

  DioClient(this.dio);

  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return await dio.get(
      url,
      queryParameters: queryParameters,
    );
  }
}
