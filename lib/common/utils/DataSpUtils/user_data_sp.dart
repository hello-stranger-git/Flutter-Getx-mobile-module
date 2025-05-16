import 'package:hug/common/utils/DataSpUtils/data_sp_utils.dart';

class UserDataKeys {
  static const String userId = 'user_id';
  static const String userToken = 'user_token';
  static const String userName = 'user_name';
  static const String userAge = 'user_age';
}

class UserDataSp {
  static Future<bool> saveUserId(int id) {
    return DataSpUtils.setInt(UserDataKeys.userId, id);
  }

  static int? getUserId() {
    return DataSpUtils.getInt(UserDataKeys.userId);
  }

  static Future<bool> saveUserToken(String token) {
    return DataSpUtils.setString(UserDataKeys.userToken, token);
  }

  static String? getUserToken() {
    return DataSpUtils.getString(UserDataKeys.userToken);
  }

  static Future<bool> removeUserData() {
    return Future.wait([
      DataSpUtils.remove(UserDataKeys.userId),
      DataSpUtils.remove(UserDataKeys.userToken),
    ]).then((_) => true);
  }
}