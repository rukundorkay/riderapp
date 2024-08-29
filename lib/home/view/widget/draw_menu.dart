import 'package:flutter/material.dart';
import 'package:riderapp/shared/styles.dart';
import 'package:riderapp/shared/widget/svg_picture.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
    required this.link,
    required this.name,
  });
  final String name;
  final String link;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      minTileHeight: 40,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppStyles.spaceDefault,
      ),
      leading: MySvgPicture(
        link,
        height: AppStyles.spaceDefault,
      ),
      title: Text(
        name,
        style: const TextStyle(
            fontSize: AppStyles.spaceSmall, color: AppColors.afternoonGrey),
      ),
      onTap: () {
        Navigator.pop(context); // Close the drawer
      },
    );
  }
}