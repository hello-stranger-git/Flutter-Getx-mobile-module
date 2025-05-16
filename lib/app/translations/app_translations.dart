import 'package:get/get.dart';
import 'en_us.dart';
import 'zh_cn.dart';
import 'ja_jp.dart';
import 'zh_tw.dart';

// 多语言配置
class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'zh_CN': zhCn,
        'zh_Hans_CN': zhCn,
        'ja_JP': jaJp,
        'zh_TW': zhTw,
      };
}