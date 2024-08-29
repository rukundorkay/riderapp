import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/shared/models/user.dart';
import 'package:riderapp/shared/services/AuthService.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:uuid/uuid.dart';

class SignupController extends GetxController {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController gender = TextEditingController();
   final formKey = GlobalKey<FormState>();

  createUser() {
    final isUsed = AuthService.to.isEmailOrPhoneUsed(email.text, phone.text);

    if (!isUsed) {
      final user = User(
        uuid: const Uuid().v4(),
        name: name.text,
        email: email.text,
        phoneNumber: phone.text,
        gender: gender.text,
        password: '',
      );
      Get.offNamed(Routes.newPasword, arguments: {'user': user});
    } else {
      Get.snackbar(
        "Error",
        "oops! email already taken",
        colorText: AppColors.secondary,
        backgroundColor: AppColors.LightRed,
      );
    }
  }
}
