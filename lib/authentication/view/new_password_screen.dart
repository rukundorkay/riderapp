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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Set New Password",
                style: TextStyle(
                  fontSize: AppStyles.spaceMedium,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: AppStyles.spaceLarge,
              ),
              SizedBox(
                height: AppStyles.spaceDefault,
              ),
              AppTextInputField(
                hint: "Enter your Password",
                isPassword: true,
              ),
              SizedBox(
                height: AppStyles.spaceDefault,
              ),
              AppTextInputField(
                hint: "confirm password",
                isPassword: true,
              ),
              SizedBox(height: AppStyles.spaceDefault),
              Row(
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
              SizedBox(
                height: AppStyles.spaceLarge,
              ),
              AppButton(
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
