import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/resources.dart';
import '../../../activities/presentation/pages/activities_page.dart';
import '../../../history/presentation/pages/history_page.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../nemo/presentation/pages/nemo_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';

class StageController extends GetxController {
  StageController({
    this.initialIndex = 0,
  });
  final int initialIndex;
  final screens = [
    const HomePage(),
    ActivitiesPage(),
    const NemoPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  final tabItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.homeBlack,
        height: SizeConfig.width_16,
        width: SizeConfig.width_16,
        fit: BoxFit.contain,
      ),
      label: AppStrings.home,
      activeIcon: Image.asset(
        AppIcons.homeAmber,
        height: SizeConfig.width_16,
        width: SizeConfig.width_16,
        fit: BoxFit.contain,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.activitiesBlack,
        height: SizeConfig.width_16,
        width: SizeConfig.width_16,
        fit: BoxFit.contain,
      ),
      label: AppStrings.activities,
      activeIcon: Image.asset(
        AppIcons.activitiesAmber,
        height: SizeConfig.width_16,
        width: SizeConfig.width_16,
        fit: BoxFit.contain,
      ),
    ),
    BottomNavigationBarItem(
      icon: SizedBox(
        height: SizeConfig.width_16,
        width: SizeConfig.width_16,
      ),
      label: AppStrings.nemo,
      activeIcon: SizedBox(
        height: SizeConfig.width_16,
        width: SizeConfig.width_16,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.clockBlack,
        height: SizeConfig.width_16,
        width: SizeConfig.width_16,
        fit: BoxFit.contain,
      ),
      label: AppStrings.history,
      activeIcon: Image.asset(
        AppIcons.clockAmber,
        height: SizeConfig.width_16,
        width: SizeConfig.width_16,
        fit: BoxFit.contain,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppImages.profileImage,
        height: SizeConfig.width_16,
        width: SizeConfig.width_16,
        fit: BoxFit.contain,
      ),
      label: AppStrings.profile,
      activeIcon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.brightAmber,
            width: 1.5,
          ),
        ),
        child: Image.asset(
          AppImages.profileImage,
          height: SizeConfig.width_16,
          width: SizeConfig.width_16,
          fit: BoxFit.contain,
        ),
      ),
    ),
  ];

  late Rx<int> selectedBNBIndex;

  @override
  void onInit() {
    selectedBNBIndex = initialIndex.obs;
    super.onInit();
  }

  void updateSelectedBNBIndex(int index) {
    selectedBNBIndex.value = index;
    update();
  }
}
