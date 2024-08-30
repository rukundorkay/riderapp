import 'package:another_stepper/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/transport/controllers/request_sent.dart';

class RequestSent extends GetView<RequestSentController> {
  const RequestSent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAuthAppBar(title: "Request for rent"),
      body: Container(
        margin: const EdgeInsets.all(AppStyles.spaceDefault),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnotherStepper(
                barThickness: 1,
                verticalGap: 20,
                stepperList: [
                  StepperData(
                    iconWidget: const Icon(
                      Icons.pin_drop_outlined,
                      color: AppColors.LightRed,
                    ),
                    title: StepperText(
                      'Current location',
                      textStyle: const TextStyle(
                        fontSize: AppStyles.spaceDefault,
                        color: AppColors.afternoonGrey,
                      ),
                    ),
                    subtitle: StepperText(
                      "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
                      textStyle: const TextStyle(
                        fontSize: AppStyles.spaceTiny,
                        color: AppColors.shadeOFGrey,
                      ),
                    ),
                  ),
                  StepperData(
                    iconWidget: const Icon(
                      Icons.pin_drop,
                      color: AppColors.primary,
                    ),
                    title: StepperText(
                      'Office',
                      textStyle: const TextStyle(
                        fontSize: AppStyles.spaceDefault,
                        color: AppColors.afternoonGrey,
                      ),
                    ),
                    subtitle:
                        StepperText('1901 Thornridge Cir. Shiloh, Hawaii 81063',
                            textStyle: const TextStyle(
                              fontSize: AppStyles.spaceTiny,
                              color: AppColors.shadeOFGrey,
                            )),
                  )
                ],
                stepperDirection: Axis.vertical,
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                padding: const EdgeInsets.all(AppStyles.spaceDefault),
                decoration: BoxDecoration(
                  color: AppColors.veryLightGreen,
                  border: Border.all(
                    color: AppColors.primary,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mustang Shelby GT",
                            style: TextStyle(
                              color: AppColors.afternoonGrey,
                              fontSize: AppStyles.spaceDefault,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColors.yellow,
                                size: AppStyles.spaceDefault,
                              ),
                              Text("4.9 (531 reviews)"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(child: Image.asset(AppAssets.redCar)))
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Charge",
                style: TextStyle(
                  color: AppColors.afternoonGrey,
                  fontSize: AppStyles.spaceDefault,
                ),
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mustang",
                    style: TextStyle(
                      color: AppColors.afternoonGrey,
                      fontSize: AppStyles.spaceDefault,
                    ),
                  ),
                  Text(
                    "\$200",
                    style: TextStyle(
                      color: AppColors.afternoonGrey,
                      fontSize: AppStyles.spaceDefault,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Vat",
                    style: TextStyle(
                      color: AppColors.afternoonGrey,
                      fontSize: AppStyles.spaceDefault,
                    ),
                  ),
                  Text(
                    "\$20",
                    style: TextStyle(
                      color: AppColors.afternoonGrey,
                      fontSize: AppStyles.spaceDefault,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Select Payment Method",
                style: TextStyle(
                  color: AppColors.afternoonGrey,
                  fontSize: AppStyles.spaceDefault,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const PaymentMode(
                icon: AppAssets.m,
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              const PaymentMode(
                icon: AppAssets.s,
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              const PaymentMode(
                icon: AppAssets.p,
              ),
              const SizedBox(
                height: 90,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(AppStyles.spaceDefault),
        color: AppColors.secondary,
        child: const Row(
          children: [
            Expanded(
              child: AppButton(
                hasBorder: false,
                label: 'Confirm Ride',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaymentMode extends StatelessWidget {
  const PaymentMode({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppStyles.spaceDefault),
      decoration: BoxDecoration(
        color: AppColors.veryLightGreen,
        border: Border.all(
          color: AppColors.primary,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          MySvgPicture(icon, height: AppStyles.spaceMedium),
          const SizedBox(
            width: AppStyles.spaceTiny,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "**** **** **** 8970",
                style: TextStyle(
                  color: AppColors.afternoonGrey,
                  fontSize: AppStyles.spaceDefault,
                ),
              ),
              Text(
                "Expires: 12/26",
                style: TextStyle(
                  color: AppColors.afternoonGrey,
                  fontSize: AppStyles.spaceDefault - 2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
