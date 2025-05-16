import 'package:get/get.dart';
import 'package:hug/app/translations/app_translations.dart';
import 'package:sprintf/sprintf.dart';

// 页面调用翻译工具类
class TranslationUtil {
  static String translate(String key, [List<dynamic> args = const []]) {
    final translations = AppTranslations().keys[Get.locale?.toString()] ?? {};
    String translation = translations[key] ?? key;
    if (args.isNotEmpty) {
      try {
        return sprintf(translation, args);
      } catch (e) {
        return translation;
      }
    } else {
      return translation;
    }
  }
}

// 所有翻译的 key
class TranslationKeys {
  static const String homePageTitle = 'home_page_title';
  static const String userPageTitle = 'user_page_title';
}