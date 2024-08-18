import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

class MyDropDownButton extends StatelessWidget {
  const MyDropDownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: AppSizes.width_8,
      ),
      child: Row(
        children: [
          Text(
            AppStrings.daily,
            style: AppTextStyles.normalSemiBold.copyWith(
              color: AppColors.greyDavy,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.greyDavy,
            size: AppSizes.fontSize_26,
          )
        ],
      ),
    );
  }
}
