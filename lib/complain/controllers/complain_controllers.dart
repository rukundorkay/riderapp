import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/shared/services/ComplainService.dart';

import 'package:riderapp/shared/shared.dart';
import 'package:uuid/uuid.dart';

class ComplainController extends GetxController {
  final selectedValue = ComplainType.vehicleArrivedLate.obs;
  final TextEditingController description = TextEditingController();
  @override
  void onInit() async {
    ComplainService.to.onInit();
    super.onInit();
  }

  addComplain() {
    final complain = Complain(
        uuid: const Uuid().v4(),
        type: selectedValue.value,
        description: description.text,
        time: DateTime.now());
    ComplainService.to.addComplain(complain);
    description.clear();
  }
}
