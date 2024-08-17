import 'package:flutter/material.dart';

import '../../../../../../app/configs/size_config.dart';
import '../../../../../../core/resources/app_resources.dart';
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
        vertical: SizeConfig.width_8,
      ),
      color: AppColors.whitePure,
      child: TabBar(
        tabs: controller.tabsTitle
            .map(
              (e) => Tab(
                child: Text(
                  e.title,
                  style: AppTextStyles.dmSansNormalSemiBold.copyWith(
                    color:
                        e.isSelected ? AppColors.black : AppColors.blackMatte,
                  ),
                ),
              ),
            )
            .toList(),
        controller: tabController,
        indicatorColor: AppColors.skyBlue,
        indicatorWeight: 2,
        indicatorSize: TabBarIndicatorSize.label,
        onTap: (index) => controller.updateCurrentTabIndex(index),
      ),
    );
  }
}
