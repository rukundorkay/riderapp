import 'package:get/get.dart';
import 'package:riderapp/authentication/controllers/welcome_controllers.dart';

class WelcomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(
      () => WelcomeController(),
    );
  }
}
