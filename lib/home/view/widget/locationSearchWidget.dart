import 'package:flutter/material.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LocationSearchWidget extends StatelessWidget {
  const LocationSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppStyles.spaceDefault),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary),
          color: AppColors.lightGreen,
          borderRadius: const BorderRadius.all(Radius.circular(
            AppStyles.radius,
          ))),
      margin: const EdgeInsets.all(AppStyles.spaceDefault),
      width: MediaQuery.of(context).size.width - 32,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppStyles.radius)),
                color: AppColors.veryLightGreen,
                border: Border.all(
                  color: AppColors.primary,
                )),
            child: const ListTile(
              leading: Icon(Icons.search),
              title: Text("where would you go?"),
              trailing: Icon(Icons.favorite),
            ),
          ),
          const SizedBox(
            height: AppStyles.spaceDefault,
          ),
          ToggleSwitch(
            minWidth: MediaQuery.of(context).size.width - 32,
            minHeight: 50,
            cornerRadius: 8,
            activeBgColors: const [
              [AppColors.primary],
              [AppColors.shadeOFGrey]
            ],
            activeFgColor: AppColors.secondary,
            inactiveBgColor: AppColors.veryLightGreen,
            inactiveFgColor: Colors.black,
            initialLabelIndex: 0,
            totalSwitches: 2,
            labels: const ['Transport', 'Delivery'],
            radiusStyle: true,
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ],
      ),
    );
  }
}
