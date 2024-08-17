import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/core/utils/date_time_helpers.dart';
import 'package:aquaalert/features/history/presentation/controllers/history_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../history/domain/models/leakage.dart';
import '../../../history/presentation/widgets/leakage_info_dialog.dart';

class LeakageNotifierWidget extends StatelessWidget {
  const LeakageNotifierWidget({
    super.key,
    required this.leakage,
  });

  final Leakage leakage;

  void _showDialog({required BuildContext context, required Leakage leakage}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return LeakageInfoDialog(
          leakage: leakage,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final HistoryController controller = Get.find();
    return GestureDetector(
      onTap: () {
        _showDialog(
          context: context,
          leakage: controller.leakages.first,
        );
      },
      child: Container(
        height: SizeConfig.height_64,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.coolGrey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
            )
          ],
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            SizeConfig.radius_12,
          ),
          border: Border.all(
            color: AppColors.lavenderGray,
          ),
        ),
        padding: EdgeInsets.all(
          SizeConfig.width_8,
        ),
        margin: EdgeInsets.all(
          SizeConfig.width_4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcons.tap,
              height: SizeConfig.width_32,
              width: SizeConfig.width_32,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: SizeConfig.width_8,
            ),
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
                        style: AppTextStyles.lexendNormalRegular,
                      ),
                      Text(
                        leakage.location,
                        style: AppTextStyles.lexendSmallRegular,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "",
                        style: AppTextStyles.lexendExtraSmallRegular,
                      ),
                      Text(
                        formatDateTimeFromISO(
                          DateTime.now()
                              .subtract(
                                const Duration(hours: 1),
                              )
                              .toIso8601String(),
                        ),
                        style: AppTextStyles.lexendExtraSmallRegular,
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
