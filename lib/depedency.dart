import 'package:get/get.dart';
import 'package:riderapp/shared/services/AuthService.dart';
import 'package:riderapp/shared/services/ComplainService.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthService(), fenix: true);
    Get.lazyPut(() => ComplainService(), fenix: true);
  }
}
