import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/utils/date_time_helpers.dart';
import '../../domain/models/leakage.dart';
import '../pages/history_page.dart';

class LeakageInfoDialog extends StatelessWidget {
  const LeakageInfoDialog({
    required this.leakage,
    super.key,
  });

  final Leakage leakage;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: SizedBox(
        height: SizeConfig.getScreenHeight() * 0.7,
        width: SizeConfig.getScreenWidth() * 0.85,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.close,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
            Container(
              width: SizeConfig.getScreenWidth() * 0.85,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(
                  SizeConfig.radius_10,
                ),
              ),
              padding: EdgeInsets.all(
                SizeConfig.width_14,
              ),
              margin: EdgeInsets.only(
                top: SizeConfig.width_4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.leakageDetected,
                    style: AppTextStyles.lexendLargeMedium,
                  ),
                  Text(
                    leakage.location,
                    style: AppTextStyles.lexendNormalRegular,
                  ),
                  SizedBox(
                    height: SizeConfig.width_8,
                  ),
                  Text(
                    AppStrings.monthlyProgressStatement(11),
                    style: AppTextStyles.lexendNormalRegular,
                  ),
                  LeakageDialogInfoField(
                    label: AppStrings.amountLeaked,
                    value: leakage.amountInLitres.toString(),
                  ),
                  LeakageDialogInfoField(
                    label: AppStrings.timeOfLeakage,
                    value: formatDateTimeFromISO(
                      leakage.dateTime.toIso8601String(),
                    ),
                  ),
                  LeakageDialogInfoField(
                    label: AppStrings.placeOfLeakage,
                    value: leakage.appliance,
                  ),
                  LeakageDialogInfoField(
                    label: AppStrings.reasonForLeakage,
                    value: leakage.reason,
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
