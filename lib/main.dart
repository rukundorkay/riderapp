import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/depedency.dart';
import 'package:riderapp/routes/app_pages.dart';
import 'package:riderapp/theme.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
 runApp(
    GetMaterialApp(
      title: "Kayko",
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      initialRoute: AppPages.onboard,
      getPages: AppPages.routes,
   
    ),
  );
}


