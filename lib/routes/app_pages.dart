import 'package:get/get.dart';
import 'package:riderapp/authentication/authentication.dart';
import 'package:riderapp/complain/bindings/complain_bindings.dart';
import 'package:riderapp/complain/view/complain_screen.dart';
import 'package:riderapp/home/home.dart';
import 'package:riderapp/transport/bindings/car_details.dart';
import 'package:riderapp/transport/bindings/request_sent.dart';
import 'package:riderapp/transport/bindings/select_transport.dart';
import 'package:riderapp/transport/transport.dart';
import 'package:riderapp/transport/view/select_transport.dart';
import 'package:riderapp/onboard/onboard.dart';
import 'package:riderapp/transport/view/success.dart';

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
    GetPage(
      name: _Paths.complain,
      page: () => const ComplainScreen(),
      binding: ComplainBindings(),
    ),
    GetPage(
      name: _Paths.selectTransport,
      page: () => const SelectTransportScreen(),
      binding: SelectTransportBindings(),
    ),
    GetPage(
      name: _Paths.availableCars,
      page: () => const AvaliableCarsScreen(),
      binding: AvailableCarsBinding(),
    ),
    GetPage(
      name: _Paths.carDetails,
      page: () => const CarDetails(),
      binding: CarDetailsBinding(),
    ),
    GetPage(
      name: _Paths.requestSent,
      page: () => const RequestSent(),
      binding: RequestSentBindings(),
    ),
    GetPage(
      name: _Paths.success,
      page: () => const SuccessScreen(),
      binding: RequestSentBindings(),
    ),
  ];

  AppPages._();
}
