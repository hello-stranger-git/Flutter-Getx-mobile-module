import 'package:hug/views/pages/home/home_page.dart';
import 'package:hug/views/pages/user/user_page.dart';
import 'package:hug/common/utils/auth_middleware.dart';
import 'package:get/get.dart';
class AppRoutes {
  static const String home = '/';
  static const String user = '/user';

  static List<GetPage> get pages {
    return [
      GetPage(
        name: home,
        page: () => const HomePage(),
      ),
      GetPage(
        name: user,
        page: () => const UserPage(),
        // middlewares: [AuthMiddleware()],
      ),
    ];
  }
}