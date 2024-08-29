import 'package:get/get.dart';
import 'package:riderapp/complain/complain.dart';

class ComplainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ComplainController>(
      () => ComplainController(),
    );
  }
}
