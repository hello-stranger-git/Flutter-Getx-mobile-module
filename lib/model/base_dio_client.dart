import 'package:dio/dio.dart';
import 'package:hug/common/utils/logger.dart';
import 'package:hug/model/error_handler.dart';

// 基础 Dio 客户端
class BaseDioClient {
  late Dio _dio;

  BaseDioClient(String baseUrl) {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ));

    // 添加请求拦截器
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        AppLogger.d('请求: ${options.method} ${options.uri}');
        return handler.next(options);
      },
    ));

    // 添加响应拦截器
    _dio.interceptors.add(InterceptorsWrapper(
      onResponse: (response, handler) {
        AppLogger.d('响应: ${response.statusCode} ${response.data}');
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        final errorMessage = ErrorHandler.handleError(e);
        AppLogger.e('Dio 错误: $errorMessage', e.error, e.stackTrace);
        // 这里可以添加更多逻辑，比如显示提示框给用户
        return handler.next(e);
      },
    ));
  }

  Dio get dio => _dio;
}