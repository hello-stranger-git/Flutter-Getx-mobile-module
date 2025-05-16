import 'dart:ui';
import 'package:get/get.dart';

class LanguageUtil {
  static void changeLanguage(String languageCode, String countryCode) {
    Get.updateLocale(Locale(languageCode, countryCode));
  }
}