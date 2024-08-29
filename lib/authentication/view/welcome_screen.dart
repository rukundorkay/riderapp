import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/authentication/controllers/welcome_controllers.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/shared/shared.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(AppStyles.spaceDefault),
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: MySvgPicture(
                  height: 450,
                  AppAssets.welcomeScreen,
                ),
              ),
              const Text(
                "welcome",
                style: TextStyle(
                  fontSize: AppStyles.spaceMedium,
                  color: AppColors.afternoonGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: AppStyles.spaceDefault,
              ),
              const Text(
                "Have a better sharing experience",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.shadeOFGrey,
                  fontSize: AppStyles.spaceDefault,
                ),
              ),
              const Spacer(),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppButton(
                      onpressed: () {
                        Get.toNamed(Routes.signup);
                      },
                      label: "Create an Account",
                      hasBorder: false,
                    ),
                    const SizedBox(
                      height: AppStyles.spaceLarge,
                    ),
                    AppButton(
                      onpressed: () {
                        Get.toNamed(Routes.login);
                      },
                      label: "Login",
                      hasBorder: true,
                    ),
                    const SizedBox(
                      height: AppStyles.spaceLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
