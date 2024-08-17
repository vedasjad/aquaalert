import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

import '../../../../../../app/configs/size_config.dart';

class UsagePeriodSelectButton extends StatelessWidget {
  const UsagePeriodSelectButton({
    required this.title,
    required this.isSelected,
    super.key,
  });

  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.width_4,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: isSelected ? AppColors.white : AppColors.coolGrey,
          backgroundColor:
              isSelected ? AppColors.skyBlue : AppColors.white, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              SizeConfig.radius_4,
            ),
            side: BorderSide(
              color: isSelected ? Colors.transparent : AppColors.offWhite,
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.width_14,
            vertical: SizeConfig.width_8,
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: AppTextStyles.robotoNormalBold,
        ),
      ),
    );
  }
}
