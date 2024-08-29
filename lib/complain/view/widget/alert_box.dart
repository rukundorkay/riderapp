import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/shared/shared.dart';

class SuccessAlertBox extends StatelessWidget {
  const SuccessAlertBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            const MySvgPicture(AppAssets.star, height: 124),
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
  }
}
