import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/onboard/view/widget/onboard_content.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/onboard/controllers/onboard_controller.dart';

class OnboardScreen extends GetView<OnboardController> {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: PageView(
            controller: controller.pageController,
            children: [
              OnboardContent(
                index: 0,
                controller: controller,
                controllerSvg: AppAssets.controller1,
                heroSvg: AppAssets.anywhere,
                title: "Anywhere you are",
                body: "Sell houses easily with the help of Listenoryx"
                    " and to make this line big I am writing more.",
              ),
              OnboardContent(
                controller: controller,
                index: 1,
                controllerSvg: AppAssets.controller2,
                heroSvg: AppAssets.anytime,
                title: "At AnyTime",
                body: "Sell houses easily with the help of Listenoryx"
                    " and to make this line big I am writing more.",
              ),
              OnboardContent(
                controller: controller,
                isLast: true,
                index: 2,
                controllerSvg: AppAssets.go,
                heroSvg: AppAssets.bookCar,
                title: "Book your car",
                body: "Sell houses easily with the help of Listenoryx"
                    " and to make this line big I am writing more.",
              )
            ],
          ),
        ),
      ),
    );
  }
}
