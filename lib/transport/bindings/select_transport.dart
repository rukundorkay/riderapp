import 'package:get/get.dart';
import 'package:riderapp/transport/controllers/select_transport.dart';

class SelectTransportBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectTransportController>(
      () => SelectTransportController(),
    );
  }
}
