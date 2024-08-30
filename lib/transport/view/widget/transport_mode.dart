import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/shared/styles.dart';
import 'package:riderapp/transport/controllers/select_transport.dart';

Widget TransportMode(
    String imagePath, String name, SelectTransportController controller) {
  return Container(
    padding: const EdgeInsets.all(AppStyles.spaceDefault),
    decoration: BoxDecoration(
      color: controller.selectedTransaport.value == name
          ? AppColors.veryLightGreen
          : AppColors.naturalGrey,
      border: Border.all(
        color: controller.selectedTransaport.value == name
            ? AppColors.primary
            : const Color.fromARGB(255, 192, 184, 184),
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              controller.selectedTransaport.value = name;
              Get.toNamed(Routes.availableCars);
            },
            child: Image.asset(imagePath, height: 74, fit: BoxFit.none),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          name,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    ),
  );
}
