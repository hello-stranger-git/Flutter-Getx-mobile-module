import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hug/routes/app_routes.dart';
import 'package:hug/views/pages/home/home_controller.dart';

class AuthMiddleware extends GetMiddleware {
  final HomeController _userController = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    // 假设当 user 不为 null 时表示已登录
    if (_userController.user == null && route != AppRoutes.home) {
      return const RouteSettings(name: AppRoutes.home);
    }
    return null;
  }
}