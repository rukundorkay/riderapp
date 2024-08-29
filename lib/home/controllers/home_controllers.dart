import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/shared/models/user.dart';
import 'package:riderapp/shared/services/AuthService.dart';

class HomeControllers extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late User currentUser;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
