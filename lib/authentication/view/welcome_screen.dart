import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/authentication/controllers/welcome_controllers.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/theme.dart';

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
              Expanded(
                flex: 2,
                child: Image.asset(
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            style: AppTheme.coloredButton(
                              context,
                              AppColors.primary,
                            ),
                            onPressed: () {
                              // Get.toNamed(Routes.SIGNUP);
                            },
                            child: const Text(
                              "Create an Account",
                              style: TextStyle(
                                fontSize: AppStyles.spaceDefault,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppStyles.spaceLarge,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            style: AppTheme.borderColoredButton(
                              context,
                              AppColors.primary,
                            ),
                            onPressed: () {
                              // Get.toNamed(Routes.SIGNIN);
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 15,
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: AppStyles.spaceDefault,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
