import 'package:flutter/material.dart';
import 'package:riderapp/shared/shared.dart';

class Specs extends StatelessWidget {
  const Specs({
    super.key,
    required this.icon,
    required this.amount,
    required this.label,
  });
  final IconData icon;
  final String amount;
  final String label;

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
      child: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Icon(
                icon,
                color: AppColors.afternoonGrey,
                size: 16,
              ),
            ),
          ),
          const SizedBox(height: 1.0),
          Text(
            label,
            style: const TextStyle(
              fontSize: AppStyles.spaceTiny,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            amount,
            style: const TextStyle(
              fontSize: AppStyles.spaceTiny,
            ),
          ),
        ],
      ),
    );
  }
}
