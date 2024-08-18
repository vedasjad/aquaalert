import 'package:aquaalert/features/stage/features/appliances/features/single_appliance/presentation/controllers/single_appliance_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../../core/resources/app_resources.dart';
import '../../../../../../home/presentation/widgets/leakage_notifier_widget.dart';

class AlertsTab extends StatelessWidget {
  const AlertsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final SingleApplianceController controller = Get.find();

    return Container(
      color: AppColors.offWhite,
      child: Column(
        children: List.generate(controller.leakages.length, (index) {
          return LeakageNotifierWidget(
            leakage: controller.leakages[index],
          );
        }),
      ),
    );
  }
}
