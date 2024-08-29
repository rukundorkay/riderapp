import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/shared/models/user.dart';
import 'package:uuid/uuid.dart';

class SignupController extends GetxController {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController gender = TextEditingController();

  createUser() {
    final user = User(
      uuid: const Uuid().v4(),
      name: name.text,
      email: email.text,
      phoneNumber: phone.text,
      gender: gender.text,
      password: '',
    );
   
  }
}
