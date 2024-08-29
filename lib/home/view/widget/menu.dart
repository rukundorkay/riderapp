import 'package:flutter/material.dart';
import 'package:riderapp/home/home.dart';
import 'package:riderapp/shared/shared.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
    required this.controller,
  });

  final HomeControllers controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      top: 50,
      child: InkWell(
        onTap: () {
          controller.scaffoldKey.currentState?.openDrawer();
        },
        child: Container(
          padding: const EdgeInsets.all(AppStyles.spaceTiny),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(AppStyles.radius)),
            color: AppColors.lightGreen,
          ),
          child: const Icon(
            Icons.list,
            size: 30,
          ),
        ),
      ),
    );
  }
}