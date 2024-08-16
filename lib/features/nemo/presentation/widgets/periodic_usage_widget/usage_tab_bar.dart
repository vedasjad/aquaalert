import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../app/configs/size_config.dart';
import '../../../../../core/resources/app_colors.dart';
import '../../../../../core/resources/app_text_styles.dart';
import '../../controllers/nemo_controller.dart';

class UsageTabBar extends StatelessWidget {
  const UsageTabBar({
    super.key,
    required this.controller,
  });

  final NemoController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: EdgeInsets.all(SizeConfig.width_4),
        decoration: BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.circular(
            SizeConfig.radius_14,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            controller.tabs.length,
            (index) {
              final tab = controller.tabs[index];
              return GestureDetector(
                onTap: () => controller.updateSelectedTabIndex(index),
                child: Container(
                  width: SizeConfig.getScreenWidth() * 0.8 / 3,
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.width_20,
                    vertical: SizeConfig.width_8,
                  ),
                  decoration: tab.isSelected
                      ? BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(
                            SizeConfig.radius_12,
                          ),
                        )
                      : null,
                  alignment: Alignment.center,
                  child: Text(
                    tab.title,
                    style: AppTextStyles.lexendNormalRegular.copyWith(
                      color:
                          tab.isSelected ? AppColors.black : AppColors.slate500,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    });
  }
}
