import 'package:get/get.dart';
import 'package:riderapp/onboard/controllers/onboard_controller.dart';

class OnboardBidings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardController>(
      () => OnboardController(),
    );
  }
}
