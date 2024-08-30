import 'package:get/get.dart';
import 'package:riderapp/transport/controllers/car_details.dart';

class CarDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarDetailsController>(
      () => CarDetailsController(),
    );
  }
}
