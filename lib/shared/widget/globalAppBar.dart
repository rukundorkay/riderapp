  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/shared/styles.dart';

AppBar globalAuthAppBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.afternoonGrey,
          size: 24,
        ),
      ),
      title: const Text(
        "Back",
        style: TextStyle(
          fontSize: AppStyles.spaceDefault,
        ),
      ),
      centerTitle: false,
      backgroundColor: AppColors.secondary,
    );
  }

