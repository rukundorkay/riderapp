import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/complain/complain.dart';
import 'package:riderapp/shared/services/ComplainService.dart';

import 'package:riderapp/shared/shared.dart';

class ComplainScreen extends GetView<ComplainController> {
  const ComplainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAuthAppBar(title: "Complain", isCenter: true),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(AppStyles.spaceDefault),
          child: Column(
            children: [
              AppDropdownField(
                  onChanged: (value) => controller.selectedValue.value = value!,
                  value: controller.selectedValue.value,
                  items: ComplainType.values.map((ComplainType type) {
                    return DropdownMenuItem<ComplainType>(
                      value: type,
                      child: Text(getComplainTypeString(type)),
                    );
                  }).toList(),
                  hint: 'Drop down'),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              AppTextInputField(
                controller: controller.description,
                hint: 'Write your complain here (minimum 10 characters)',
                maxlines: 6,
              ),
              const SizedBox(
                height: AppStyles.spaceDefault * 2,
              ),
              AppButton(
                onpressed: () {
                  controller.addComplain();
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: AppColors.secondary,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                Get.back();
                              },
                            )
                          ],
                        ),
                        content: SizedBox(
                          width: 361,
                          height: 355,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const MySvgPicture(AppAssets.go, height: 124),
                              const SizedBox(
                                height: AppStyles.spaceDefault,
                              ),
                              const Text(
                                'Send SucessFully',
                                style: TextStyle(
                                  color: AppColors.afternoonGrey,
                                  fontSize: AppStyles.spaceMedium,
                                ),
                              ),
                              const SizedBox(
                                height: AppStyles.spaceTiny,
                              ),
                              const Text(
                                'Your complain has been send successful',
                                style: TextStyle(
                                  color: AppColors.shadeOFGrey,
                                  fontSize: AppStyles.spaceSmall,
                                ),
                              ),
                              const Spacer(),
                              AppButton(
                                onpressed: () {
                                  Get.back();
                                  Get.back();
                                  Get.back();
                                },
                                label: "Back Home",
                                hasBorder: false,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                label: "Submit",
                hasBorder: false,
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              const Text(
                "Recent Views",
                style: TextStyle(
                  fontSize: AppStyles.spaceDefault + 2,
                ),
              ),
              Obx(
                () => Flexible(
                  child: ListView.builder(
                    itemCount: ComplainService.to.complains.length,
                    itemBuilder: (context, index) {
                      return UserReview(
                        complain: ComplainService.to.complains[index],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
