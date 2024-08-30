import 'package:get/get.dart';

import 'package:riderapp/transport/controllers/request_sent.dart';

class RequestSentBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequestSentController>(
      () => RequestSentController(),
    );
  }
}
