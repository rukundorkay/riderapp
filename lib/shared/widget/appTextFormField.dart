import 'package:flutter/material.dart';
import 'package:riderapp/shared/shared.dart';

class AppTextInputField extends StatefulWidget {
  const AppTextInputField({
    super.key,
    this.isPassword = false,
    required this.hint,
    this.keyboardType,
    this.controller,
    this.validator,
  });
  final bool isPassword;
  final String hint;
  final TextEditingController? controller;

  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  State<AppTextInputField> createState() => _AppTextInputFieldState();
}

class _AppTextInputFieldState extends State<AppTextInputField> {
  bool isobscure = true;
  bool isSuffixOnTapped = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            validator: widget.validator,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: isSuffixOnTapped ? isobscure : widget.isPassword,
            decoration: InputDecoration(
              
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isobscure = !isobscure;
                          isSuffixOnTapped = true;
                        });
                      },
                      icon: isobscure
                          ? const Icon(
                              Icons.visibility,
                              color: AppColors.shadeOFGrey,
                            )
                          : const Icon(
                              Icons.visibility_off,
                              color: AppColors.shadeOFGrey,
                            ),
                    )
                  : null,
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
        )
      ],
    );
  }
}
