import 'package:get/get.dart';
import 'package:riderapp/shared/services/AuthService.dart';
class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthService(), fenix: true);
    // Get.lazyPut(() => AuthenticationProvider(), fenix: true);
  }
}
