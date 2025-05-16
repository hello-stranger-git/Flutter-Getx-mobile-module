import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hug/app/translations/translation_util.dart';
import 'package:hug/common/utils/DataSpUtils/user_data_sp.dart';
import 'package:hug/common/utils/language_util.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    int? userId = UserDataSp.getUserId();
    print('当前语言环境: ${Get.deviceLocale}'); 
    print(userId); 
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslationUtil.translate(TranslationKeys.homePageTitle)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the profile page'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 切换到英文
                LanguageUtil.changeLanguage('en', 'US');
              },
              child: const Text('Switch to English'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // 切换到中文
                LanguageUtil.changeLanguage('zh', 'CN');
              },
              child: const Text('切换到中文'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // 切换到中文
                LanguageUtil.changeLanguage('ja', 'JP');
              },
              child: const Text('切换到日语'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // 切换到中文
                LanguageUtil.changeLanguage('zh', 'TW');
              },
              child: const Text('切换到繁体'),
            ),
          ],
        ),
      ),
    );
  }
}