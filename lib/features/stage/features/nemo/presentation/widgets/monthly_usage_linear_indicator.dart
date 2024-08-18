import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
              style: AppTextStyles.extraLargeBold.copyWith(
                fontSize: AppSizes.fontSize_40,
              ),
            ),
            SizedBox(
              width: AppSizes.w4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.ltrsPerDay,
                  style: AppTextStyles.normalRegular,
                ),
                Text(
                  isPrevMonth ? AppStrings.previousMonth : AppStrings.thisMonth,
                  style: AppTextStyles.smallRegular,
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
            AppSizes.radius_22,
          ),
          padding: EdgeInsets.zero,
          progressColor: AppColors.blue,
          backgroundColor: AppColors.offWhite,
        ),
      ],
    );
  }
}
