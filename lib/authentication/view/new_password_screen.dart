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
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              AppTextInputField(
                controller: controller.confirmPassword,
                hint: "confirm password",
                isPassword: true,
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
                  controller.createUser();
                },
                label: "Save",
                hasBorder: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
