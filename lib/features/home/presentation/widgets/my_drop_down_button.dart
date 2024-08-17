import 'package:flutter/material.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/app_resources.dart';

class MyDropDownButton extends StatelessWidget {
  const MyDropDownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: SizeConfig.width_8,
      ),
      child: Row(
        children: [
          Text(
            AppStrings.daily,
            style: AppTextStyles.dmSansNormalSemiBold.copyWith(
              color: AppColors.greyDavy,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.greyDavy,
            size: SizeConfig.fontSize_26,
          )
        ],
      ),
    );
  }
}
