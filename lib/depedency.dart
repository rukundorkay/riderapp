import 'package:get/get.dart';
class InitialBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => NetworkService(), fenix: true);
    // Get.lazyPut(() => AuthenticationProvider(), fenix: true);
  }
}
