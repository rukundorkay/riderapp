import 'package:get/get.dart';
import 'package:riderapp/authentication/authentication.dart';
import 'package:riderapp/onboard/onboard.dart';

part 'app_routes.dart';

class AppPages {
  static const onboard = Routes.onboard;

  static final routes = [
    GetPage(
      name: _Paths.onboard,
      page: () => const OnboardScreen(),
      binding: OnboardBidings(),
    ),
    GetPage(
      name: _Paths.welcome,
      page: () => const WelcomeScreen(),
      binding: WelcomeBindings(),
    ),
  ];

  AppPages._();
}
