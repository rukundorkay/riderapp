import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riderapp/home/home.dart';


class HomeScreen extends GetView<HomeControllers> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(80.0),
            bottomRight: Radius.circular(80.0),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
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






