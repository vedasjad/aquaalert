import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/features/stage/features/appliances/presentation/pages/appliances_page.dart';
import 'package:aquaalert/features/stage/features/home/presentation/pages/home_page.dart';
import 'package:aquaalert/features/stage/features/nemo/presentation/pages/nemo_page.dart';
import 'package:aquaalert/features/stage/features/profile/presentation/pages/profile_page.dart';
import 'package:aquaalert/features/stage/features/usage/presentation/pages/usage_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StageController extends GetxController {
  StageController({
    this.initialIndex = 0,
  });
  final int initialIndex;
  final screens = [
    const HomePage(),
    UsagePage(),
    const NemoPage(),
    const AppliancesPage(),
    const ProfilePage(),
  ];

  final tabItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.homeInactive,
        height: AppSizes.w24,
        width: AppSizes.w24,
        fit: BoxFit.contain,
      ),
      label: AppStrings.home,
      activeIcon: Image.asset(
        AppIcons.homeActive,
        height: AppSizes.w24,
        width: AppSizes.w24,
        fit: BoxFit.contain,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.usageInactive,
        height: AppSizes.w24,
        width: AppSizes.w24,
        fit: BoxFit.contain,
      ),
      label: AppStrings.myUsage,
      activeIcon: Image.asset(
        AppIcons.usageActive,
        height: AppSizes.w24,
        width: AppSizes.w24,
        fit: BoxFit.contain,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.hydraInactive,
        height: AppSizes.w24,
        width: AppSizes.w24,
        fit: BoxFit.contain,
      ),
      label: AppStrings.hydra,
      activeIcon: SizedBox(
        height: AppSizes.w24,
        width: AppSizes.w24,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.appliancesInactive,
        height: AppSizes.w24,
        width: AppSizes.w24,
        fit: BoxFit.contain,
      ),
      label: AppStrings.appliances,
      activeIcon: Image.asset(
        AppIcons.appliancesActive,
        height: AppSizes.w24,
        width: AppSizes.w24,
        fit: BoxFit.contain,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        AppIcons.profileInactive,
        height: AppSizes.w24,
        width: AppSizes.w24,
        fit: BoxFit.contain,
      ),
      label: AppStrings.profile,
      activeIcon: Image.asset(
        AppIcons.profileInactive,
        color: AppColors.blue,
        height: AppSizes.w24,
        width: AppSizes.w24,
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
