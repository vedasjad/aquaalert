import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_strings.dart';
import 'package:aquaalert/core/resources/app_text_styles.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/core/utils/date_time_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/app_colors.dart';

class LeakageNotifierWidget extends StatelessWidget {
  const LeakageNotifierWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.leakageDetected,
                      style: AppTextStyles.lexendSmallRegular,
                    ),
                    Text(
                      AppStrings.kitchen,
                      style: AppTextStyles.lexendExtraSmallRegular,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "",
                      style: AppTextStyles.lexendSmallRegular,
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
    );
  }
}
