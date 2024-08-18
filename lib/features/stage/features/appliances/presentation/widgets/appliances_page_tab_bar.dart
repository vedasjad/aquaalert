import 'package:flutter/material.dart';

import '../../../../../../core/resources/app_resources.dart';
import '../controllers/appliances_controller.dart';

class AppliancesPageTabBar extends StatelessWidget {
  const AppliancesPageTabBar({
    super.key,
    required this.controller,
    required this.tabController,
  });

  final AppliancesController controller;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: AppSizes.width_8,
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
