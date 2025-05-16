import 'package:dio/dio.dart';

class ErrorHandler {
  static String handleError(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return '连接超时，请检查网络连接或稍后重试。';
        case DioExceptionType.sendTimeout:
          return '发送请求超时，请检查网络连接或稍后重试。';
        case DioExceptionType.receiveTimeout:
          return '接收响应超时，请检查网络连接或稍后重试。';
        case DioExceptionType.badCertificate:
          return '证书验证失败，请联系管理员。';
        case DioExceptionType.badResponse:
          final statusCode = error.response?.statusCode;
          if (statusCode != null) {
            return '服务器返回错误状态码 $statusCode，请稍后重试。';
          } else {
            return '服务器响应异常，请稍后重试。';
          }
        case DioExceptionType.cancel:
          return '请求已取消。';
        case DioExceptionType.connectionError:
          return '网络连接错误，请检查网络设置。';
        case DioExceptionType.unknown:
          return '发生未知网络错误，请检查网络连接或稍后重试。';
      }
    } else {
      return '发生未知错误，请稍后重试。';
    }
  }
}