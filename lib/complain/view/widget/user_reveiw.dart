import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/complain/complain.dart';
import 'package:riderapp/shared/services/ComplainService.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:intl/intl.dart';

class UserReview extends StatelessWidget {
  const UserReview({
    super.key,
    required this.complain,
    required this.controller,
  });
  final Complain complain;
  final ComplainController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppStyles.spaceDefault),
      padding: const EdgeInsets.all(AppStyles.spaceDefault),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary, width: 2),
          borderRadius:
              const BorderRadius.all(Radius.circular(AppStyles.radius))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  getComplainTypeString(complain.type),
                  style: const TextStyle(
                    color: AppColors.afternoonGrey,
                    fontSize: AppStyles.spaceDefault,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            TextEditingController description =
                                TextEditingController(
                                    text: complain.description);
                            return AlertDialog(
                              backgroundColor: AppColors.secondary,
                              title: const Text(
                                "Edit My Complain",
                                style: TextStyle(
                                  fontSize: AppStyles.spaceDefault,
                                  color: AppColors.afternoonGrey,
                                ),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  AppDropdownField(
                                      onChanged: (value) => controller
                                          .selectedValue.value = value!,
                                      value: complain.type,
                                      items: ComplainType.values
                                          .map((ComplainType type) {
                                        return DropdownMenuItem<ComplainType>(
                                          value: type,
                                          child:
                                              Text(getComplainTypeString(type)),
                                        );
                                      }).toList(),
                                      hint: 'Drop down'),
                                  const SizedBox(
                                    height: AppStyles.spaceDefault,
                                  ),
                                  AppTextInputField(
                                    controller: description,
                                    hint:
                                        'Write your complain here (minimum 10 characters)',
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
                                    height: AppStyles.spaceDefault,
                                  ),
                                  AppButton(
                                    label: "Save",
                                    hasBorder: false,
                                    onpressed: () {
                                      ComplainService.to.editComplain(
                                        complain.uuid,
                                        complain.copyWith(
                                          type: controller.selectedValue.value,
                                          description: description.text,
                                          time: DateTime.now(),
                                        ),
                                      );
                                      Get.back();
                                    },
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: const Icon(
                        Icons.edit,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        ComplainService.to.deleteComplain(complain.uuid);
                      },
                      child: const Icon(
                        Icons.delete,
                        color: AppColors.LightRed,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  complain.description,
                  style: const TextStyle(
                    color: AppColors.shadeOFGrey,
                    fontSize: AppStyles.spaceSmall,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        convertIsoToHumanReadable(
                            complain.time.toIso8601String()),
                        style: const TextStyle(
                          color: AppColors.afternoonGrey,
                          fontSize: AppStyles.spaceSmall,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }

  String convertIsoToHumanReadable(String isoString) {
    DateTime dateTime = DateTime.parse(isoString);
    DateTime now = DateTime.now();

    // Calculate the difference in days between the given date and today
    Duration difference = now.difference(dateTime);
    String formattedDate;

    if (difference.inDays == 0 && now.day == dateTime.day) {
      // If the date is today
      formattedDate = "Today, ${DateFormat.jm().format(dateTime)}";
    } else if (difference.inDays == 1 ||
        (difference.inDays == 0 && now.day != dateTime.day)) {
      // If the date is yesterday
      formattedDate = "Yesterday, ${DateFormat.jm().format(dateTime)}";
    } else {
      // For older dates, use a standard date format
      formattedDate = DateFormat.yMMMd().add_jm().format(dateTime);
    }

    return formattedDate;
  }
}
