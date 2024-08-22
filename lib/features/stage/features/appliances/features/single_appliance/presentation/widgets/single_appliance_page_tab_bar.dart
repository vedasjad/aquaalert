import 'package:flutter/material.dart';

import '../../../../../../../../core/resources/app_resources.dart';
import '../controllers/single_appliance_controller.dart';

class SingleAppliancePageTabBar extends StatelessWidget {
  const SingleAppliancePageTabBar({
    super.key,
    required this.controller,
    required this.tabController,
  });

  final SingleApplianceController controller;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: AppSizes.w8,
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
