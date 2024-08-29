import 'package:flutter/material.dart';
import 'package:riderapp/shared/assets.dart';
import 'package:riderapp/shared/styles.dart';
import 'package:riderapp/shared/widget/svg_picture.dart';

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
        child: const MySvgPicture(
          AppAssets.notification,
          height: 30,
        ),
      ),
    );
  }
}
