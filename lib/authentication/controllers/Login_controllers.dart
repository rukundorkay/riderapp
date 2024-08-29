import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/shared/services/AuthService.dart';
import 'package:riderapp/shared/shared.dart';

class LoginController extends GetxController {
  TextEditingController identifier = TextEditingController();
  TextEditingController password = TextEditingController();
  signin() {
    final isAuthanticated =
        AuthService.to.login(identifier.text, password.text);
    if (isAuthanticated) {
      Get.toNamed(Routes.home);
    } else {
      Get.snackbar(
        "Invalid credentials",
        "email or password  your Provided is Incorrect",
        backgroundColor: AppColors.LightRed,
        colorText: AppColors.secondary,
      );
    }
  }
}
