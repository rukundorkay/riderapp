import 'package:get/get.dart';

import 'package:riderapp/home/controllers/home_controllers.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeControllers>(
      () => HomeControllers(),
    );
  }
}
