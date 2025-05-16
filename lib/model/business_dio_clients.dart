import 'package:dio/dio.dart';
import 'package:hug/model/environment_config.dart';
import 'base_dio_client.dart';
// 用户业务相关的Dio客户端
class UserDioClient {
  static final BaseDioClient _baseClient = BaseDioClient(EnvironmentConfig.apiBaseUrl);
  static Dio get dio => _baseClient.dio;
}

// class Business2DioClient {
//   static final BaseDioClient _baseClient = BaseDioClient('https://api.example2.com');
//   static Dio get dio => _baseClient.dio;
// }