import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riderapp/shared/assets.dart';
import 'package:riderapp/shared/models/user.dart';

class HomeControllers extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late User currentUser;
  final carIcon = BitmapDescriptor.defaultMarker.obs;
  void setCustomIcon() async {
    // Define sizes based on platform
    final carSize =
        Platform.isAndroid ? const Size(10000, 10000) : const Size(200, 200);
    try {
      // Load car icon
      final newIcon = await BitmapDescriptor.asset(
        ImageConfiguration(size: carSize),
        AppAssets.placeIndicate,
      );

      carIcon.value = newIcon;
    } catch (e) {
      // Handle errors (e.g., asset not found, etc.)
      debugPrint('Error loading custom icons: $e');
    }
  }

  @override
  void onInit() {
    setCustomIcon();
    super.onInit();
  }
}
