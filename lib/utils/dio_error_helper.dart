import 'package:dio/dio.dart';

class DioErrorHelper {
  const DioErrorHelper();

  static Exception exception(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return Exception('Connection error');
      case DioExceptionType.badResponse:
        return Exception('Bad response');
      default:
        return Exception();
    }
  }
}
