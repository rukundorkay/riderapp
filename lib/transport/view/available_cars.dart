import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/transport/controllers/select_transport.dart';

import 'package:riderapp/shared/shared.dart';

class AvaliableCarsScreen extends GetView<SelectTransportController> {
  const AvaliableCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAuthAppBar(title: 'Select Transport'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [],
      ),
    );
  }
}
