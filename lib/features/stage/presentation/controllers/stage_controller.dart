import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/resources.dart';
import '../../../history/presentation/pages/history_page.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../nemo/presentation/pages/nemo_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import '../../../usage//presentation/pages/activities_page.dart';

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
        AppIcons.homeInactive,
        height: SizeConfig.width_24,
        width: SizeConfig.width_24,
        fit: BoxFit.contain,
      ),
      label: AppStrings.home,
      activeIcon: Image.asset(
        AppIcons.homeActive,
        height: SizeConfig.width_24,
        width: SizeConfig.width_24,
        fit: BoxFit.contain,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.usageInactive,
        height: SizeConfig.width_24,
        width: SizeConfig.width_24,
        fit: BoxFit.contain,
      ),
      label: AppStrings.myUsage,
      activeIcon: Image.asset(
        AppIcons.usageActive,
        height: SizeConfig.width_24,
        width: SizeConfig.width_24,
        fit: BoxFit.contain,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.hydraInactive,
        height: SizeConfig.width_24,
        width: SizeConfig.width_24,
        fit: BoxFit.contain,
      ),
      label: AppStrings.hydra,
      activeIcon: SizedBox(
        height: SizeConfig.width_24,
        width: SizeConfig.width_24,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.appliancesInactive,
        height: SizeConfig.width_24,
        width: SizeConfig.width_24,
        fit: BoxFit.contain,
      ),
      label: AppStrings.appliances,
      activeIcon: Image.asset(
        AppIcons.appliancesActive,
        height: SizeConfig.width_24,
        width: SizeConfig.width_24,
        fit: BoxFit.contain,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.profileInactive,
        height: SizeConfig.width_24,
        width: SizeConfig.width_24,
        fit: BoxFit.contain,
      ),
      label: AppStrings.profile,
      activeIcon: Image.asset(
        AppIcons.profileInactive,
        color: AppColors.skyBlue,
        height: SizeConfig.width_24,
        width: SizeConfig.width_24,
        fit: BoxFit.contain,
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
