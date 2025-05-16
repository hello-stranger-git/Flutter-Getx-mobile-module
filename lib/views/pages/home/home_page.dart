import 'package:flutter/material.dart';
import 'package:hug/app/theme/app_theme_config.dart';
import 'package:hug/app/translations/translation_util.dart';
import 'package:hug/common/constants/image_constants.dart';
import 'package:hug/routes/app_routes.dart';
import 'package:hug/views/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final UserController _userController = UserController();
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      // init: _userController,
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(TranslationUtil.translate(TranslationKeys.userPageTitle, ['John'])),
          ),
          body: Container(
            color: AppThemeConfig.primaryColorWithHalfOpacity,
            width: 200.w, 
            height: 200.h,
            child: Column(
              children: [
                

                // 使用抽离后的图片变量
                Image.asset(
                  ImageConstants.baseImagePath,
                  fit: BoxFit.contain,
                ),
                _buildBody(_homeController),
              ],
            )
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // controller.fetchUser();
              // 使用 GetX 进行路由跳转
                Get.toNamed(AppRoutes.user);
            },
            child: const Icon(Icons.refresh),
          ),
        );
      },
    );
  }

  Widget _buildBody(HomeController controller) {
    if (_homeController.isLoading) {
      // return const Center(child: CircularProgressIndicator());

      return Center(child: Text('Error: ${_homeController.error}'));
    } else if (_homeController.error != null) {
      return Center(child: Text('Error: ${_homeController.error}'));
    } else if (_homeController.user != null) {
      return Center(
        child: Text('Name: ${_homeController.user!.name}, Age: ${_homeController.user!.age}'),
      );
    } else {
      return const Center(child: Text('No data available'));
    }
  }
}