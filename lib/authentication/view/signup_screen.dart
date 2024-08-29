import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/authentication/authentication.dart';
import 'package:riderapp/routes/app_pages.dart';

import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/shared/widget/dividerWithText.dart';

class SignupScreen extends GetView<SignupController> {
  const SignupScreen({super.key});

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
                "Sign up with your email or phone number",
                style: TextStyle(
                  fontSize: AppStyles.spaceMedium,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: AppStyles.spaceLarge,
              ),
              AppTextInputField(
                controller: controller.name,
                hint: "Name",
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              AppTextInputField(
                controller: controller.email,
                hint: "Email",
                isPassword: false,
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              AppTextInputField(
                controller: controller.phone,
                hint: "phone Number",
                isPassword: false,
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              AppTextInputField(
                controller: controller.gender,
                hint: "Gender",
                isPassword: false,
              ),
              const SizedBox(
                height: AppStyles.spaceLarge,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.verified,
                    color: AppColors.primary,
                  ),
                  SizedBox(
                    width: AppStyles.spaceTiny,
                  ),
                  Expanded(
                      child: Wrap(
                    children: [
                      Text(
                        "By signing up. you agree to ",
                        style: TextStyle(
                          color: AppColors.shadeOFGrey,
                          fontSize: AppStyles.spaceSmall,
                        ),
                      ),
                      Text(
                        "the Terms of service",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: AppStyles.spaceSmall,
                        ),
                      ),
                      Text(" and ",
                          style: TextStyle(
                            color: AppColors.shadeOFGrey,
                            fontSize: AppStyles.spaceSmall,
                          )),
                      Text(
                        "Privacy policy.",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: AppStyles.spaceSmall,
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              const SizedBox(
                height: AppStyles.spaceLarge,
              ),
              AppButton(
                label: "Sign Up",
                hasBorder: false,
                onpressed: () {
                  controller.createUser();
                },
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
                      Get.toNamed(Routes.login);
                    },
                    child: const Wrap(
                      children: [
                        Text(
                          "Already Have an account? ",
                          style: TextStyle(
                            fontSize: AppStyles.spaceDefault,
                            color: AppColors.afternoonGrey,
                          ),
                        ),
                        Text(
                          "Sign",
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
