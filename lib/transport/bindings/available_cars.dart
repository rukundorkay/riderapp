import 'package:get/get.dart';
import 'package:riderapp/transport/controllers/available_cars.dart';

class AvailableCarsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AvailableCarsController>(
      () => AvailableCarsController(),
    );
  }
}
