import 'package:get/get.dart';
import 'package:riderapp/authentication/controllers/Login_controllers.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
