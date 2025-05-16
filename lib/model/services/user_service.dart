import 'package:dio/dio.dart';
import 'package:hug/model/business_dio_clients.dart';
import 'package:hug/model/data/user_model.dart';

class UserService {
  final Dio _dio = UserDioClient.dio;

  Future<User> getUser() async {
    try {
      final response = await _dio.get('/user');
      return User.fromJson(response.data);
    } catch (e) {
      print('获取用户数据失败: $e');
      rethrow;
    }
  }
}