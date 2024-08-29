import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/shared/styles.dart';

AppBar globalAuthAppBar({String? title, bool isCenter=false}) {
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
    title: Text(
      title ?? "Back",
      style: const TextStyle(
        fontSize: AppStyles.spaceDefault,
      ),
    ),
    centerTitle: isCenter,
    backgroundColor: AppColors.secondary,
  );
}
