import 'package:flutter/material.dart';
import 'package:riderapp/shared/styles.dart';

class LocationInputBox extends StatelessWidget {
  const LocationInputBox({
    super.key,
    required this.hint,
    this.controller,
    required this.icon,
  });
  final String hint;
  final TextEditingController? controller;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppStyles.spaceTiny),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: icon,
            hintText: hint,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary),
              borderRadius: BorderRadius.all(
                Radius.circular(AppStyles.radius),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.borderGrey),
                borderRadius:
                    BorderRadius.all(Radius.circular(AppStyles.radius)))),
      ),
    );
  }
}