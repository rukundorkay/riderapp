import 'package:get/get.dart';
import 'package:riderapp/authentication/controllers/signup_controllers.dart';

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(
      () => SignupController(),
    );
  }
}
