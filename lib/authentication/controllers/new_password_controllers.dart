import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/shared/models/user.dart';
import 'package:riderapp/shared/services/AuthService.dart';

class NewPasswordController extends GetxController {
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  late User user;

  @override
  void onInit() async {
    user = Get.arguments['user'];
    super.onInit();
  }

  createUser() {
    AuthService.to.saveUser(
      user.copyWith(password: password.text),
    );
    Get.toNamed(Routes.login);
  }
}
