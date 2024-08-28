import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/depedency.dart';
import 'package:riderapp/routes/app_pages.dart';

void main() {
 runApp(
    GetMaterialApp(
      title: "Kayko",
      // theme: KaykoTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      initialRoute: AppPages.onboard,
      getPages: AppPages.routes,
   
    ),
  );
}


