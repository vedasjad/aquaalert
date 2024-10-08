import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

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
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.15),
                blurRadius: 3,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                AppSizes.r10,
              ),
              topRight: Radius.circular(
                AppSizes.r10,
              ),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                AppSizes.r10,
              ),
              topRight: Radius.circular(
                AppSizes.r10,
              ),
            ),
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: controller.selectedBNBIndex.value,
              onTap: (index) {
                controller.updateSelectedBNBIndex(index);
              },
              selectedItemColor: AppColors.blue,
              unselectedItemColor: AppColors.blackMatte,
              selectedLabelStyle: AppTextStyles.smallRegular.copyWith(
                color: AppColors.blue,
              ),
              unselectedLabelStyle: AppTextStyles.smallRegular.copyWith(
                color: AppColors.blackMatte,
              ),
              backgroundColor: AppColors.white,
              // fixedColor: AppColors.white,
              type: BottomNavigationBarType.fixed,
              items: controller.tabItems,
            ),
          ),
        ),
        if (controller.selectedBNBIndex.value == 2)
          Positioned(
            bottom: AppSizes.w24,
            left: MediaQuery.of(context).size.width / 2 -
                AppSizes.w22, // Adjust to center
            child: GestureDetector(
              onTap: () => controller.updateSelectedBNBIndex(2),
              child: Image.asset(
                AppIcons.hydraActive,
                height: AppSizes.w44,
                width: AppSizes.w44,
                fit: BoxFit.contain,
              ),
            ),
          ),
      ],
    );
  }
}
