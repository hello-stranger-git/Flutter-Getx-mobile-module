import 'package:flutter/material.dart';
import 'package:hug/app/theme/app_theme_config.dart';
import 'package:hug/app/translations/app_translations.dart';
import 'package:hug/common/utils/DataSpUtils/user_data_sp.dart';
import 'package:hug/common/utils/screen_util_config.dart';
import 'package:hug/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:hug/common/utils/DataSpUtils/data_sp_utils.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DataSpUtils.init();

    await UserDataSp.saveUserId(123);
  runApp(
    // 初始化屏幕适配工具类
    ScreenUtilConfig.init(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hug App',
      theme: AppThemeConfig.getAppTheme(),
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.pages,
      translations: AppTranslations(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}