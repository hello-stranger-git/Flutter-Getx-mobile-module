import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// 屏幕适配工具类
class ScreenUtilConfig {
  static Widget init({required Widget child}) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // 根据你的设计稿尺寸进行调整
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return child!;
      },
      child: child,
    );
  }
}