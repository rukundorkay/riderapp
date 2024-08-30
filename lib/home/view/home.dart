import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riderapp/home/home.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/shared/services/AuthService.dart';
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
                      Text(
                        AuthService.to.currentUser.name,
                        style: const TextStyle(
                            color: AppColors.afternoonGrey,
                            fontSize: AppStyles.spaceDefault + 2),
                      ),
                      Text(
                        AuthService.to.currentUser.email,
                        style: const TextStyle(
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
                DrawerMenu(
                  onTap: () {
                    Get.toNamed(Routes.complain);
                  },
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
              Obx(
                () => GoogleMap(
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(1.9512, 30.0600),
                    zoom: 12.4746,
                  ),
                  markers: {
                    Marker(
                      icon: controller.carIcon.value,
                      position: const LatLng(1.9512, 30.0600),
                      markerId: const MarkerId('riderLocation'),
                      // icon: passangerIcon,
                      infoWindow: const InfoWindow(
                        title: 'My Current location',
                        snippet: 'ME',
                      ),
                    )
                  },
                  onMapCreated: (controller) {
                    // controller..complete(controller);
                  },
                ),
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
