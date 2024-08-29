import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/complain/complain.dart';
import 'package:riderapp/shared/services/ComplainService.dart';

import 'package:riderapp/shared/shared.dart';

class ComplainScreen extends GetView<ComplainController> {
  const ComplainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAuthAppBar(title: "Complain", isCenter: true),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(AppStyles.spaceDefault),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                AppDropdownField(
                    onChanged: (value) =>
                        controller.selectedValue.value = value!,
                    value: controller.selectedValue.value,
                    items: ComplainType.values.map((ComplainType type) {
                      return DropdownMenuItem<ComplainType>(
                        value: type,
                        child: Text(getComplainTypeString(type)),
                      );
                    }).toList(),
                    hint: 'Drop down'),
                const SizedBox(
                  height: AppStyles.spaceDefault,
                ),
                AppTextInputField(
                  controller: controller.description,
                  hint: 'Write your complain here (minimum 10 characters)',
                  maxlines: 6,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    } else if (value.length < 10) {
                      return 'Complaint must be at least 10 characters long';
                    }
                    return null; // Input is valid
                  },
                ),
                const SizedBox(
                  height: AppStyles.spaceDefault * 2,
                ),
                AppButton(
                  onpressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.addComplain();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const SuccessAlertBox();
                        },
                      );
                    }
                  },
                  label: "Submit",
                  hasBorder: false,
                ),
                const SizedBox(
                  height: AppStyles.spaceDefault,
                ),
                const Text(
                  "Recent Views",
                  style: TextStyle(
                    fontSize: AppStyles.spaceDefault + 2,
                  ),
                ),
                Obx(
                  () => Flexible(
                    child: ListView.builder(
                      itemCount: ComplainService.to.complains.length,
                      itemBuilder: (context, index) {
                        return UserReview(
                          controller: controller,
                          complain: ComplainService.to.complains[index],
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
