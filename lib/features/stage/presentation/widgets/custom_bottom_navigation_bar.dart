import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

import '../../../../app/configs/size_config.dart';
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
            color: AppColors.whitePure,
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.15),
                blurRadius: 3,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                SizeConfig.radius_10,
              ),
              topRight: Radius.circular(
                SizeConfig.radius_10,
              ),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                SizeConfig.radius_10,
              ),
              topRight: Radius.circular(
                SizeConfig.radius_10,
              ),
            ),
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: controller.selectedBNBIndex.value,
              onTap: (index) {
                controller.updateSelectedBNBIndex(index);
              },
              selectedItemColor: AppColors.skyBlue,
              unselectedItemColor: AppColors.blackMatte,
              selectedLabelStyle: AppTextStyles.dmSansSmallRegular.copyWith(
                color: AppColors.skyBlue,
              ),
              unselectedLabelStyle: AppTextStyles.dmSansSmallRegular.copyWith(
                color: AppColors.blackMatte,
              ),
              backgroundColor: AppColors.whitePure,
              // fixedColor: AppColors.white,
              type: BottomNavigationBarType.fixed,
              items: controller.tabItems,
            ),
          ),
        ),
        if (controller.selectedBNBIndex.value == 2)
          Positioned(
            bottom: SizeConfig.width_24,
            left: MediaQuery.of(context).size.width / 2 -
                SizeConfig.width_22, // Adjust to center
            child: GestureDetector(
              onTap: () => controller.updateSelectedBNBIndex(2),
              child: Image.asset(
                AppIcons.hydraActive,
                height: SizeConfig.width_44,
                width: SizeConfig.width_44,
                fit: BoxFit.contain,
              ),
            ),
          ),
      ],
    );
  }
}
