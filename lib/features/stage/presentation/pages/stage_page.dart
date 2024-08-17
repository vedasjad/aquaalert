import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/stage_controller.dart';
import '../widgets/custom_bottom_navigation_bar.dart';
import '../widgets/notification_icon_widget.dart';

class StagePage extends StatelessWidget {
  const StagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final StageController controller = Get.find();
    return Obx(() {
      return Scaffold(
        backgroundColor: AppColors.whitePure,
        appBar: (controller.selectedBNBIndex.value < 1) ? buildAppBar() : null,
        bottomNavigationBar: CustomBottomNavigationBar(
          controller: controller,
        ),
        body: controller.screens[controller.selectedBNBIndex.value],
      );
    });
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.whitePure,
      surfaceTintColor: AppColors.whitePure,
      title: Text(
        "Hello, Asjad!",
        style: AppTextStyles.dmSansLargeBold.copyWith(
          color: AppColors.black,
        ),
      ),
      actions: [
        IconWidget(
          iconPath: AppIcons.bell,
          onTap: () {},
        ),
      ],
    );
  }
}
