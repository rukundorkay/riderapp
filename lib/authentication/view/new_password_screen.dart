import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/authentication/authentication.dart';
import 'package:riderapp/shared/shared.dart';

class NewPasswordScreen extends GetView<NewPasswordController> {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAuthAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(AppStyles.spaceDefault),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Set New Password",
                  style: TextStyle(
                    fontSize: AppStyles.spaceMedium,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: AppStyles.spaceLarge,
                ),
                const SizedBox(
                  height: AppStyles.spaceDefault,
                ),
                AppTextInputField(
                  controller: controller.password,
                  hint: "Enter your Password",
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    } else if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    } else if (!RegExp(r'^(?=.*[0-9])(?=.*[!@#\$&*~]).{8,}$')
                        .hasMatch(value)) {
                      return 'Password must contain at least one number or special character';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: AppStyles.spaceDefault,
                ),
                AppTextInputField(
                  controller: controller.confirmPassword,
                  hint: "confirm password",
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Confirm Password is required';
                    } else if (value != controller.password.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppStyles.spaceDefault),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "alteast one number or special character",
                      style: TextStyle(
                        fontSize: AppStyles.spaceDefault - 2,
                        color: AppColors.shadeOFGrey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppStyles.spaceLarge,
                ),
                AppButton(
                  onpressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      // If the form is valid, proceed with saving the password
                      controller.createUser();
                    }
                  },
                  label: "Save",
                  hasBorder: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
