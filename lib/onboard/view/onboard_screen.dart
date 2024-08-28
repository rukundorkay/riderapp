import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/core/assets.dart';
import 'package:riderapp/core/styles.dart';
import 'package:riderapp/onboard/controllers/onboard_controller.dart';
import 'package:flutter_svg/svg.dart';

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
              Container(
                margin: const EdgeInsets.all(AppStyles.spaceDefault),
                child: const Column(
                  children: [
                    Expanded(
                      child: MySvgPicture(
                        AppAssets.anytime,
                        height: 500,
                      ),
                    ),
                    SizedBox(
                      height: AppStyles.spaceLarge,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text("At AnyTime"),
                        SizedBox(
                          height: AppStyles.spaceDefault,
                        ),
                        Text(
                            "Sell houses easily with the help of Listenoryx and to make this line big I am writing more.")
                      ],
                    )),
                    Expanded(
                      child: MySvgPicture(
                        AppAssets.progress2,
                        height: 86,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///[MySvgPicture] handles svg
class MySvgPicture extends StatelessWidget {
  ///initialize
  const MySvgPicture(
    this.svgLink, {
    this.color,
    required this.height,
    super.key,
  });

  ///svg location
  final String svgLink;

  ///svg color
  final Color? color;

  ///svg height
  final double height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgLink,
      height: height,
      color: color,
    );
  }
}
