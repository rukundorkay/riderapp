import 'package:flutter/material.dart';
import 'package:riderapp/shared/styles.dart';

class Notifications extends StatelessWidget {
  const Notifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 16,
      top: 50,
      child: Container(
        padding: const EdgeInsets.all(AppStyles.spaceTiny),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(AppStyles.radius)),
          color: AppColors.secondary,
        ),
        child: const Icon(
          Icons.notifications,
          size: 30,
        ),
      ),
    );
  }
}