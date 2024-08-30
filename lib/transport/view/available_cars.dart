import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/routes/app_pages.dart';

import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/transport/transport.dart';

class AvaliableCarsScreen extends GetView<AvailableCarsController> {
  const AvaliableCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAuthAppBar(),
      body: Container(
        margin: const EdgeInsets.all(AppStyles.spaceDefault),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Available Cars for Ride',
              style: TextStyle(
                fontSize: AppStyles.spaceMedium,
                fontWeight: FontWeight.w600,
                color: AppColors.afternoonGrey,
              ),
            ),
            const Text(
              '18 cars Found',
              style: TextStyle(
                fontSize: AppStyles.spaceDefault - 2,
                fontWeight: FontWeight.w500,
                color: AppColors.shadeOFGrey,
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.only(top: AppStyles.spaceDefault * 2),
                  padding: const EdgeInsets.all(AppStyles.spaceDefault),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(
                        AppStyles.radius,
                      )),
                      border: Border.all(
                        color: AppColors.primary,
                        width: 2,
                      )),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BMW Cabrio",
                                  style: TextStyle(
                                    color: AppColors.afternoonGrey,
                                    fontSize: AppStyles.spaceDefault + 2,
                                  ),
                                ),
                                Text(
                                  "Automatic | 3 seats | octane",
                                  style: TextStyle(
                                    color: AppColors.shadeOFGrey,
                                    fontSize: AppStyles.spaceSmall,
                                  ),
                                ),
                                Text(
                                  "800m(5 mins away)",
                                  style: TextStyle(
                                    color: AppColors.afternoonGrey,
                                    fontSize: AppStyles.spaceSmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Image.asset(AppAssets.redCar),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: AppStyles.spaceDefault,
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: AppButton(
                                  label: 'book Later',
                                  hasBorder: true,
                                  onpressed: () {
                                    Get.toNamed(Routes.carDetails);
                                  })),
                          const SizedBox(
                            width: AppStyles.spaceDefault,
                          ),
                          Flexible(
                              child: AppButton(
                            label: 'Ride Now',
                            hasBorder: false,
                            onpressed: () {
                              Get.toNamed(Routes.carDetails);
                            },
                          )),
                        ],
                      )
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
