import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/utils/date_time_helpers.dart';
import 'package:aquaalert/features/stage/features/appliances/domain/models/leakage.dart';
import 'package:flutter/material.dart';

class LeakageNotifierWidget extends StatelessWidget {
  const LeakageNotifierWidget({
    super.key,
    required this.leakage,
  });

  final Leakage leakage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: AppSizes.height_64,
        width: AppSizes.getScreenWidth() * 0.95,
        decoration: BoxDecoration(
          color: AppColors.redLight,
          border: BorderDirectional(
            start: BorderSide(
              color: AppColors.red,
              width: AppSizes.width_6,
            ),
          ),
        ),
        padding: EdgeInsets.all(
          AppSizes.width_8,
        ),
        margin: EdgeInsets.all(
          AppSizes.w4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.leakageDetected,
                        style: AppTextStyles.smallRegular,
                      ),
                      Text(
                        '${leakage.location}, ${leakage.appliance}',
                        style: AppTextStyles.normalSemiBold,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        formatDateTimeFromISO(
                          DateTime.now()
                              .subtract(
                                const Duration(hours: 1),
                              )
                              .toIso8601String(),
                        ).replaceFirst(',', ' • '),
                        style: AppTextStyles.smallRegular.copyWith(
                          color: AppColors.greyDavy,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
