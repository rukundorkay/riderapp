import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/home/controllers/home_controllers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends GetView<HomeControllers> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(-1, 30),
              zoom: 12.4746,
            ),
            markers: {
              Marker(
                markerId: MarkerId('riderLocation'),
                // icon: passangerIcon,

                // position: CameraPosition(
                //   target: LatLng(-1, 30),
                  // zoom: 12.4746,
                // ),
                infoWindow: InfoWindow(
                  title: 'My Current location',
                  snippet: 'ME',
                ),
              )
            },
            onMapCreated: (controller) {
              // _controller.complete(controller);
            },
          ),
        ],
      ),
    );
  }
}
