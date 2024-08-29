import 'package:flutter/material.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/theme.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.label,
      required this.hasBorder,
      this.onpressed});
  final String label;
  final bool hasBorder;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            style: hasBorder
                ? AppTheme.borderColoredButton(
                    context,
                    AppColors.primary,
                  )
                : AppTheme.coloredButton(
                    context,
                    AppColors.primary,
                  ),
            onPressed: onpressed,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: hasBorder ? 15 : 0),
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: AppStyles.spaceDefault,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}