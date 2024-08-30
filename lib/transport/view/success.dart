import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/transport/transport.dart';

class SuccessScreen extends GetView<AvailableCarsController> {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: globalAuthAppBar(),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MySvgPicture(AppAssets.star, height: 190),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                child: Text(
                  style: TextStyle(
                    fontSize: AppStyles.spaceDefault + 4,
                  ),
                  "Thank You",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  "Your booking has been placed sent to Md. Sharif Ahmed ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ));
  }
}
