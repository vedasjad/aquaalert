import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_text_styles.dart';
import '../../../../core/resources/resources.dart';
import '../controllers/stage_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.controller,
  });

  final StageController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.2),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ],
              border: Border.all(
                color: AppColors.offWhite,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  SizeConfig.radius_26,
                ),
                topRight: Radius.circular(
                  SizeConfig.radius_26,
                ),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  SizeConfig.radius_26,
                ),
                topRight: Radius.circular(
                  SizeConfig.radius_26,
                ),
              ),
              child: BottomNavigationBar(
                elevation: 0,
                currentIndex: controller.selectedBNBIndex.value,
                onTap: (index) {
                  controller.updateSelectedBNBIndex(index);
                },
                selectedItemColor: AppColors.brightAmber,
                unselectedItemColor: AppColors.black,
                selectedLabelStyle: AppTextStyles.lexendSmallSemiBold.copyWith(
                  color: AppColors.brightAmber,
                ),
                unselectedLabelStyle:
                    AppTextStyles.lexendSmallSemiBold.copyWith(
                  color: AppColors.black,
                ),
                backgroundColor: AppColors.white,
                // fixedColor: AppColors.white,
                type: BottomNavigationBarType.fixed,
                items: controller.tabItems,
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.width_24,
            left: MediaQuery.of(context).size.width / 2 -
                SizeConfig.width_35, // Adjust to center
            child: GestureDetector(
              onTap: () => controller.updateSelectedBNBIndex(2),
              child: Image.asset(
                AppImages.nemo,
                height: SizeConfig.width_70,
                width: SizeConfig.width_70,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Obx(() {
            double indicatorPosition =
                controller.selectedBNBIndex.value.toDouble() *
                    MediaQuery.of(context).size.width /
                    5;
            if (controller.selectedBNBIndex.value == 2) {
              indicatorPosition -= 0;
            }
            return AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              left: indicatorPosition,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                height: 3,
                decoration: BoxDecoration(
                  color: AppColors.brightAmber,
                  borderRadius: BorderRadius.circular(
                    SizeConfig.radius_4,
                  ),
                ),
              ),
            );
          }),
        ],
      );
    });
  }
}
