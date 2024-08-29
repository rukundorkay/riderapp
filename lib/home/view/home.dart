import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riderapp/home/home.dart';
import 'package:riderapp/shared/shared.dart';

class HomeScreen extends GetView<HomeControllers> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: Drawer(
        backgroundColor: AppColors.secondary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(80.0),
            bottomRight: Radius.circular(80.0),
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(
                    AppStyles.spaceDefault,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.primary,
                        child: Image.asset(
                          AppAssets.avatar,
                          height: 70,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "Nate Samson",
                        style: TextStyle(
                            color: AppColors.afternoonGrey,
                            fontSize: AppStyles.spaceDefault + 2),
                      ),
                      const Text(
                        "nate@mail.com",
                        style: TextStyle(
                          color: AppColors.afternoonGrey,
                          fontSize: AppStyles.spaceSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const DrawerMenu(
                  name: "History",
                  link: AppAssets.history,
                ),
                const Divider(),
                const DrawerMenu(
                  name: "Complain",
                  link: AppAssets.complain,
                ),
                const Divider(),
                const DrawerMenu(
                  name: "Referal",
                  link: AppAssets.referral,
                ),
                const Divider(),
                const DrawerMenu(
                  name: "About us",
                  link: AppAssets.about,
                ),
                const Divider(),
                const DrawerMenu(
                  name: "Settings",
                  link: AppAssets.settings,
                ),
                const Divider(),
                const DrawerMenu(
                  name: "Logout",
                  link: AppAssets.logout,
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: 0,
        children: [
          Stack(
            children: [
              GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: LatLng(37.43296265331129, -122.08832357078792),
                  zoom: 12.4746,
                ),
                markers: {
                  const Marker(
                    position: LatLng(37.43296265331129, -122.08832357078792),
                    markerId: MarkerId('riderLocation'),
                    // icon: passangerIcon,
                    infoWindow: InfoWindow(
                      title: 'My Current location',
                      snippet: 'ME',
                    ),
                  )
                },
                onMapCreated: (controller) {
                  // controller..complete(controller);
                },
              ),
              Menu(controller: controller),
              const Notifications(),
              const RentalButton(),
            ],
          ),
        ],
      ),
      bottomSheet: const CustomBottomBar(),
    );
  }
}

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
