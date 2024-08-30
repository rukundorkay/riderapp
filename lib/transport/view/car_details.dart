import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/transport/controllers/car_details.dart';

import 'package:riderapp/transport/view/specs.dart';

class CarDetails extends GetView<CarDetailsController> {
  const CarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAuthAppBar(),
      body: Container(
        margin: const EdgeInsets.all(AppStyles.spaceDefault),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mustang Shelby GT',
                style: TextStyle(
                  fontSize: AppStyles.spaceMedium,
                  fontWeight: FontWeight.w600,
                  color: AppColors.afternoonGrey,
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.yellow,
                    size: AppStyles.spaceDefault,
                  ),
                  Text("4.9 (531 reviews)"),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: AppStyles.spaceDefault),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset(AppAssets.redCar)],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Specifications',
                style: TextStyle(
                  fontSize: AppStyles.spaceDefault,
                  fontWeight: FontWeight.w600,
                  color: AppColors.afternoonGrey,
                ),
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: AppStyles.spaceDefault,
                mainAxisSpacing: AppStyles.spaceDefault,
                childAspectRatio: 1,
                children: const [
                  Specs(
                    icon: Icons.battery_2_bar_rounded,
                    label: "Max. power",
                    amount: "25 amh",
                  ),
                  Specs(
                    icon: Icons.gas_meter,
                    label: "fuel",
                    amount: "10 km/litre",
                  ),
                  Specs(
                    icon: Icons.speed,
                    label: "max Speed",
                    amount: "30 kph",
                  ),
                  Specs(
                    icon: Icons.battery_2_bar_rounded,
                    label: "0-6 mph",
                    amount: "25 amh",
                  ),
                ],
              ),
              const SizedBox(height: AppStyles.spaceDefault),
              const Text(
                'Car Features',
                style: TextStyle(
                  fontSize: AppStyles.spaceDefault,
                  fontWeight: FontWeight.w600,
                  color: AppColors.afternoonGrey,
                ),
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(AppStyles.spaceDefault),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(AppStyles.radius)),
                    border: Border.all(color: AppColors.primary),
                    color: AppColors.veryLightGreen,
                  ),
                  margin: const EdgeInsets.only(
                    top: AppStyles.spaceTiny,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "model",
                        style: TextStyle(
                          color: AppColors.afternoonGrey,
                          fontSize: AppStyles.spaceDefault - 2,
                        ),
                      ),
                      Text(
                        "GTu9eo$index",
                        style: const TextStyle(
                          color: AppColors.afternoonGrey,
                          fontSize: AppStyles.spaceDefault - 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(AppStyles.spaceDefault),
        color: AppColors.secondary,
        child: Row(
          children: [
            const Expanded(
              child: AppButton(
                hasBorder: true,
                label: 'Book later',
              ),
            ),
            const SizedBox(
              width: AppStyles.spaceDefault,
            ),
            Expanded(
              child: AppButton(
                hasBorder: false,
                label: 'Ride Now',
                onpressed: () => {
                  Get.toNamed(Routes.requestSent),
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
