import 'package:hug/model/services/user_service.dart';
import 'package:get/get.dart';
class HomeController  extends GetxController {
  final UserService _userService = UserService();
  var user = null;
  var error = null;
  var isLoading = false;
  

  Future<void> fetchUser() async {
    try {
      isLoading = !isLoading;
      if(isLoading){
        error ='123';
      }else{
        error ='456';
        
      }
      update();
      // _user = await _userService.getUser();
    } catch (e) {
    }
  }
}