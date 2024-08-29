import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/authentication/authentication.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/shared/widget/dividerWithText.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

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
                "Sign in with your email or phone number",
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
                controller: controller.identifier,
                hint: "Email or phone Number",
                isPassword: false,
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              AppTextInputField(
                controller: controller.password,
                hint: "password",
                isPassword: true,
              ),
              const SizedBox(height: AppStyles.spaceDefault),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget password?",
                    style: TextStyle(
                      fontSize: AppStyles.spaceDefault - 2,
                      color: AppColors.LightRed,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppStyles.spaceLarge,
              ),
              AppButton(
                onpressed: () {
                  controller.signin();
                },
                label: "Sign In",
                hasBorder: false,
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              const DividerWithText(),
              const SizedBox(
                height: AppStyles.spaceLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.signup);
                    },
                    child: const Wrap(
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: AppStyles.spaceDefault,
                            color: AppColors.afternoonGrey,
                          ),
                        ),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: AppStyles.spaceDefault,
                            color: AppColors.primary,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
