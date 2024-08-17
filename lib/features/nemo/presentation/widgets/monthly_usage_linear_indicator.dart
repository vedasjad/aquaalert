import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/app_text_styles.dart';

class MonthlyUsageLinearIndicator extends StatelessWidget {
  const MonthlyUsageLinearIndicator({
    required this.ltrsPerDay,
    this.isPrevMonth = false,
    super.key,
  });
  final String ltrsPerDay;
  final bool isPrevMonth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              ltrsPerDay,
              style: AppTextStyles.lexendExtraLargeBold.copyWith(
                fontSize: SizeConfig.fontSize_40,
              ),
            ),
            SizedBox(
              width: SizeConfig.width_4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.ltrsPerDay,
                  style: AppTextStyles.lexendNormalRegular,
                ),
                Text(
                  isPrevMonth ? AppStrings.previousMonth : AppStrings.thisMonth,
                  style: AppTextStyles.lexendSmallRegular,
                ),
              ],
            )
          ],
        ),
        LinearPercentIndicator(
          width: MediaQuery.of(context).size.width / 2,
          animation: true,
          lineHeight: 10.0,
          animationDuration: 400,
          percent: 0.8,
          barRadius: Radius.circular(
            SizeConfig.radius_22,
          ),
          padding: EdgeInsets.zero,
          progressColor: AppColors.skyBlue,
          backgroundColor: AppColors.offWhite,
        ),
      ],
    );
  }
}
