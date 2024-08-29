import 'package:get/get.dart';
import 'package:riderapp/authentication/authentication.dart';
import 'package:riderapp/home/home.dart';
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
      name: _Paths.home,
      page: () => const HomeScreen(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: _Paths.welcome,
      page: () => const WelcomeScreen(),
      binding: WelcomeBindings(),
    ),
    GetPage(
      name: _Paths.signup,
      page: () => const SignupScreen(),
      binding: SignupBindings(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginScreen(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: _Paths.newPassword,
      page: () => const NewPasswordScreen(),
      binding: NewPasswordBindings(),
    ),
  ];

  AppPages._();
}
