import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/stage_controller.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class StagePage extends StatelessWidget {
  const StagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final StageController controller = Get.find();
    return Obx(() {
      return Scaffold(
        backgroundColor: AppColors.white,
        bottomNavigationBar: CustomBottomNavigationBar(
          controller: controller,
        ),
        body: controller.screens[controller.selectedBNBIndex.value],
      );
    });
  }
}
