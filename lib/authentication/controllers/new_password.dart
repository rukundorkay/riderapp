import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/shared/models/user.dart';

class NewPasswordController extends GetxController {  
  @override
  void onInit() async {
    print("tets");
    final user = Get.arguments['user'] as User;

    print(user.name);

    super.onInit();
  }
}
