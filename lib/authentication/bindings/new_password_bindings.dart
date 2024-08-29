import 'package:get/get.dart';
import 'package:riderapp/authentication/controllers/new_password_controllers.dart';


class NewPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewPasswordController>(
      () => NewPasswordController(),
    );
  }
}
