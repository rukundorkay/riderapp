

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/home/view/widget/location_input_box.dart';
import 'package:riderapp/shared/styles.dart';
import 'package:riderapp/shared/widget/appButton.dart';

class LocationBottomSheet extends StatelessWidget {
  const LocationBottomSheet({
    super.key,
    required this.keyboardHeight,
    required this.sheetHeight,
  });

  final double keyboardHeight;
  final double sheetHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppStyles.radius * 2),
          topRight: Radius.circular(AppStyles.radius * 2),
        ),
      ),
      height: keyboardHeight > 0 ? sheetHeight + keyboardHeight : sheetHeight,
      padding: EdgeInsets.only(
        bottom: keyboardHeight,
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: AppStyles.spaceDefault),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(flex: 2),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.close,
                              size: 19,
                            ),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select Address",
                      style: TextStyle(
                        fontSize: AppStyles.spaceMedium - 4,
                      ),
                    )
                  ],
                ),
                const Divider(),
                const LocationInputBox(
                  hint: "from",
                  icon: Icon(Icons.pin),
                ),
                const LocationInputBox(
                  hint: "to",
                  icon: Icon(Icons.pin),
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 32, horizontal: AppStyles.spaceTiny),
                  child: AppButton(
                    label: "Next",
                    hasBorder: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
