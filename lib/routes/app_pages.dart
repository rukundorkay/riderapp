import 'package:get/get.dart';
import 'package:riderapp/onboard/bindings/onboard_bidings.dart';
import 'package:riderapp/onboard/view/onboard_screen.dart';
part 'app_routes.dart';

class AppPages {
  static const onboard = Routes.onboard;

  static final routes = [
    GetPage(
      name: _Paths.onboard,
      page: () => const OnboardScreen(),
      binding: OnboardBidings(),
    ),
    // GetPage(
    //   name: _Paths.ResetPasswordOTP,
    //   page: () => ResetPasswordOTPPage(),
    //   binding: ResetPasswordOtpBinding(),
    // ),
  ];

  AppPages._();
}
