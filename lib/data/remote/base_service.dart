import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class BaseService {
  final Dio _dio;

  BaseService(this._dio);

  factory BaseService.create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/3',
        connectTimeout: const Duration(minutes: 2),
        receiveTimeout: const Duration(minutes: 2),
        responseType: ResponseType.plain,
      ),
    );
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
          requestBody: true,
          request: true,
          error: true,
        ),
      );
      dio.interceptors.add(
        CurlLoggerDioInterceptor(printOnSuccess: true),
      );
    }
    dio.interceptors.add(ApiKeyInterceptors());
    return BaseService(dio);
  }

  Dio get dio => _dio;
}

class ApiKeyInterceptors extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] = 'application/json';
    options.headers['Authorization'] =
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlOGM5MDMxYzBiMDRmMTFlYjVjMmU2ODY3MmVkMWM2YiIsInN1YiI6IjVmNjIxMGMyMWJmMjY2MDAzOWRkNTgzZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.tsKFd9H95sHPBperOk0bqZHR89M6jmAQjOR-ggQlg4M';
    super.onRequest(options, handler);
  }
}
