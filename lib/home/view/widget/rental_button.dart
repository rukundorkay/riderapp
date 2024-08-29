
import 'package:flutter/material.dart';
import 'package:riderapp/home/home.dart';
import 'package:riderapp/shared/shared.dart';

class RentalButton extends StatelessWidget {
  const RentalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 172,
            margin: const EdgeInsets.all(AppStyles.spaceDefault),
            padding: const EdgeInsets.all(AppStyles.spaceDefault),
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(
                  AppStyles.radius,
                )),
            child: const Center(
                child: Text(
              "Rental",
              style: TextStyle(
                color: AppColors.secondary,
              ),
            )),
          ),
          const LocationSearchWidget(),
        ],
      ),
    );
  }
}