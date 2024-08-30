import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riderapp/shared/shared.dart';
import 'package:riderapp/transport/transport.dart';

class SelectTransportScreen extends GetView<SelectTransportController> {
  const SelectTransportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAuthAppBar(title: 'Select Transport'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Select your Transport',
              style: TextStyle(
                fontSize: AppStyles.spaceMedium,
                fontWeight: FontWeight.w600,
                color: AppColors.afternoonGrey,
              ),
            ),
          ),
          Obx(
            () => Expanded(
              child: GridView(
                padding: const EdgeInsets.all(16.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 32.0,
                ),
                children: [
                  TransportMode(
                    AppAssets.car,
                    'Car',
                    controller,
                  ),
                  TransportMode(AppAssets.bike, 'Bike', controller),
                  TransportMode(
                    
                    AppAssets.cycle,
                    'Cycle',
                    controller,
                  ),
                  TransportMode(
                    AppAssets.taxi,
                    'taxi',
                    controller,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
