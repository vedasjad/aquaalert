import 'package:flutter/material.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/app_text_styles.dart';
import '../../../../core/resources/resources.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width_115,
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.width_4,
      ),
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.width_8,
        horizontal: SizeConfig.width_14,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          SizeConfig.radius_8,
        ),
        border: Border.all(
          color: AppColors.offWhite,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AppIcons.filter,
            height: SizeConfig.width_18,
            width: SizeConfig.width_18,
            fit: BoxFit.contain,
          ),
          Text(
            AppStrings.filterBy,
            style: AppTextStyles.lexendNormalRegular,
          ),
        ],
      ),
    );
  }
}
