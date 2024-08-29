import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/depedency.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/theme.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
    await GetStorage.init('Rideapp');
   WidgetsFlutterBinding.ensureInitialized();
 runApp(
    GetMaterialApp(
      title: "Rider",
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      initialRoute: AppPages.onboard,
      getPages: AppPages.routes,
   
    ),
  );
}


