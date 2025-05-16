import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemeConfig {

  // 字体族配置
  static const String fontFamily = 'wechatsansstd'; // 替换为实际的字体族名称

  // 全局颜色配置
  static const Color primaryColor = Color(0xFF6200EE);
  static Color primaryColorWithHalfOpacity = primaryColor.withOpacity(0.5);

  // 全局字号配置
  static double fontSizeExtraLarge = 24.sp;

  // 全局大小配置
  static double paddingSmall = 8.w;

  // 生成 ThemeData 的静态方法
  static ThemeData getAppTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      useMaterial3: true,
      fontFamily: fontFamily,
    );
  }
}