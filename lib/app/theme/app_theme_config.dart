// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemeConfig {

  // 字体族配置
  static const String fontFamily = 'wechatsansstd'; // 替换为实际的字体族名称

  // 全局颜色配置
  static const Color c_000000 = Color(0xFF000000);
  static const Color c_0A0A0A = Color(0xFF0A0A0A);
  static const Color c_252525 = Color(0xFF252525);
  static const Color c_F9F9F9 = Color(0xFFF9F9F9);
  static const Color c_868485 = Color(0xFF868485);
  static const Color c_F6F6F6 = Color(0xFFF6F6F6);
  static const Color c_FBFCFF = Color(0xFFFBFCFF);

  static const Color c_FF266F = Color(0xFFFF266F);
  static const Color c_FF4B54 = Color(0xFFFF4B54);

  static const Color c_FD7634 = Color(0xFFFD7634);
  static const Color c_FEAC33 = Color(0xFFFEAC33);
  static const Color c_FFF7E9 = Color(0xFFFFF7E9);
  static const Color c_C3A46E = Color(0xFFC3A46E);
  static const Color c_7D4C12 = Color(0xFF7D4C12);

  static const Color c_4F7DF7 = Color(0xFF4F7DF7);
  static const Color c_37AFFA = Color(0xFF37AFFA);
  static const Color c_576B95 = Color(0xFF576B95);

  static const Color c_B277F5 = Color(0xFFB277F5);

  static const Color c_10B267 = Color(0xFF10B267);


  // static Color primaryColorWithHalfOpacity_opacity50 = primaryColor.withOpacity(0.5);

  // 全局字号配置
  static double fontSize10 = 10.sp;
  static double fontSize11 = 11.sp;
  static double fontSize12 = 12.sp;
  static double fontSize13 = 13.sp;
  static double fontSize14 = 14.sp;
  static double fontSize15 = 15.sp;
  static double fontSize16 = 16.sp;
  static double fontSize17 = 17.sp;
  static double fontSize18 = 18.sp;
  static double fontSize20 = 20.sp;
  static double fontSize22 = 22.sp;
  static double fontSize24 = 24.sp;
  static double fontSize34 = 32.sp;
  static double fontSize40 = 40.sp;
  static double fontSize60 = 60.sp;

  //全局字重配置
  static FontWeight fontWeightLight = FontWeight.w300;
  static FontWeight fontWeightRegular = FontWeight.w400;
  static FontWeight fontWeightMedium = FontWeight.w500;
  // 全局大小配置
  // static double paddingSmall = 8.w;


  // 生成 ThemeData 的静态方法
  static ThemeData getAppTheme() {
    return ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: c_000000),
      useMaterial3: true,
      fontFamily: fontFamily,
    );
  }
}