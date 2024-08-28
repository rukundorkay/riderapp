import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            onPageChanged: (int index) {},
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
            children: [if (!isLast) const Text("SKIP")],
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
              Text(title),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              Text(body)
            ],
          )),
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (!isLast) {
                  controller.pageController.nextPage(
                      duration: const Duration(milliseconds: 10),
                      curve: Curves.easeIn);
                }
              },
              child: Stack(
                children: [
                  MySvgPicture(
                    controllerSvg,
                    height: 86,
                  ),
                  if (!isLast)
                    Positioned(
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
