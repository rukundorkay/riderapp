import 'package:flutter/material.dart';
import 'package:riderapp/shared/shared.dart';

class AppDropdownField<T> extends StatefulWidget {
  const AppDropdownField({
    super.key,
    required this.items,
    required this.hint,
    this.value,
    this.onChanged,
  });

  final List<DropdownMenuItem<T>> items;
  final String hint;
  final T? value;
  final ValueChanged<T?>? onChanged;

  @override
  State<AppDropdownField<T>> createState() => _AppDropdownFieldState<T>();
}

class _AppDropdownFieldState<T> extends State<AppDropdownField<T>> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DropdownButtonFormField<T>(
            value: widget.value,
            onChanged: widget.onChanged,
            items: widget.items,
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: const TextStyle(color: AppColors.hintColor),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.borderGrey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(AppStyles.radius),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.borderGrey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(AppStyles.radius),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}