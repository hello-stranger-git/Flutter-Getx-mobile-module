import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hug/app/theme/app_theme_config.dart';

// ... existing code ...

class AppAppleAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onCancel;
  final VoidCallback onConfirm;
  final String cancelText; // 自定义取消按钮文案
  final String confirmText; // 自定义确认按钮文案
  // final double dialogWidth; // 新增属性，用于设置对话框宽度

  const AppAppleAlertDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.onCancel,
    required this.onConfirm,
    this.cancelText = '取消', // 默认值为 '取消'
    this.confirmText = '确认', // 默认值为 '确认'
    // this.dialogWidth = 300,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final adaptedDialogWidth = dialogWidth.w;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 38.w),
        width: 300.w,
        decoration: BoxDecoration(
          color: AppThemeConfig.c_FFFFFF,
          borderRadius: BorderRadius.circular(AppThemeConfig.borderRadius16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24.h),
            Text(
              title,
              style: TextStyle(
                fontSize: AppThemeConfig.fontSize16,
                fontWeight: AppThemeConfig.fontWeightMedium,
                color: AppThemeConfig.c_0A0A0A,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Text(
                content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: AppThemeConfig.fontSize13,
                  fontWeight: AppThemeConfig.fontWeightRegular,
                  color: AppThemeConfig.c_0A0A0A_opacity60,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Container(
              height: 0.5.h,
              color: AppThemeConfig.c_000000_opacity10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      Navigator.pop(context);
                      onCancel();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 52.h,
                      child: Text(
                        cancelText,
                        style: TextStyle(
                          color: AppThemeConfig.c_000000_opacity60,
                          fontSize: AppThemeConfig.fontSize16,
                          fontWeight: AppThemeConfig.fontWeightRegular,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )
                  )
                ),
                Container(
                  width: 0.5.w,
                  height: 52.h,
                  color: AppThemeConfig.c_000000_opacity10,
                ),
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      Navigator.pop(context);
                      onConfirm();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 52.h,
                      child: Text(
                        confirmText,
                        style: TextStyle(
                          color: AppThemeConfig.c_4F7DF7,
                          fontSize: AppThemeConfig.fontSize16,
                          fontWeight: AppThemeConfig.fontWeightRegular,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ... existing code ...