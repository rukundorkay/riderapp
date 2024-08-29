import 'package:flutter/material.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:intl/intl.dart';

class UserReview extends StatelessWidget {
  const UserReview({
    super.key,
    required this.complain,
  });
  final Complain complain;

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
              const Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.edit,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.delete,
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
