import 'package:flutter/material.dart';
import 'package:riderapp/shared/styles.dart';
import 'package:riderapp/shared/widget/svg_picture.dart';

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
