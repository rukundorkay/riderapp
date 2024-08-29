import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/onboard/controllers/onboard_controller.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/shared/shared.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent(
      {super.key,
      required this.title,
      required this.body,
      required this.heroSvg,
      required this.controllerSvg,
      required this.index,
      this.isLast = false,
      required this.controller});
  final String title;
  final String body;
  final String heroSvg;
  final String controllerSvg;
  final int index;
  final bool isLast;
  final OnboardController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppStyles.spaceDefault),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (!isLast)
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.welcome);
                  },
                  child: const Text("SKIP",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.afternoonGrey,
                      )),
                )
            ],
          ),
          Expanded(
            flex: 2,
            child: MySvgPicture(
              heroSvg,
              height: 500,
            ),
          ),
          const SizedBox(
            height: AppStyles.spaceLarge,
          ),
          Expanded(
              child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.afternoonGrey,
                ),
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              Text(
                body,
                style: const TextStyle(
                  color: AppColors.shadeOFGrey,
                  fontSize: 14,
                ),
              )
            ],
          )),
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (!isLast) {
                  controller.pageController.nextPage(
                      duration: const Duration(milliseconds: 10),
                      curve: Curves.easeInOutQuint);
                } else {
                  Get.toNamed(Routes.welcome);
                }
              },
              child: Stack(
                children: [
                  MySvgPicture(
                    controllerSvg,
                    height: 86,
                  ),
                  if (!isLast)
                    const Positioned(
                      top: 28,
                      left: 30,
                      child: Icon(
                        Icons.arrow_forward,
                        color: AppColors.secondary,
                      ),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
