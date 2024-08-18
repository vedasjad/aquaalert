import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/controllers/appliances_setup_page/appliances_setup_page_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/resources/app_resources.dart';

class AppliancesSetupPageTabBar extends StatelessWidget {
  const AppliancesSetupPageTabBar({
    super.key,
    required this.controller,
    required this.tabController,
  });

  final AppliancesSetupPageController controller;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: AppSizes.v10,
      ),
      color: AppColors.white,
      child: TabBar(
        tabs: controller.tabsTitle
            .map(
              (e) => Tab(
                child: Text(
                  e.title,
                  style: AppTextStyles.normalSemiBold.copyWith(
                    color:
                        e.isSelected ? AppColors.black : AppColors.blackMatte,
                  ),
                ),
              ),
            )
            .toList(),
        controller: tabController,
        indicatorColor: AppColors.blue,
        indicatorWeight: 2,
        indicatorSize: TabBarIndicatorSize.label,
        onTap: (index) => controller.updateCurrentTabIndex(index),
      ),
    );
  }
}
