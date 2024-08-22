import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        padding: EdgeInsets.all(AppSizes.w4),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            AppSizes.r14,
          ),
        ),
        margin: EdgeInsets.only(
          top: AppSizes.w8,
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
                  width: AppSizes.getScreenWidth() * 0.8 / 3,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w20,
                    vertical: AppSizes.w8,
                  ),
                  decoration: tab.isSelected
                      ? BoxDecoration(
                          color: AppColors.offWhite,
                          borderRadius: BorderRadius.circular(
                            AppSizes.r12,
                          ),
                        )
                      : null,
                  alignment: Alignment.center,
                  child: Text(
                    tab.title,
                    style: AppTextStyles.normalRegular.copyWith(
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
