import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/app_text_styles.dart';

class WaterConsumptionWidget extends StatelessWidget {
  const WaterConsumptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: SizeConfig.getScreenWidth() * 0.46,
      decoration: BoxDecoration(
        color: AppColors.skyBlue,
        borderRadius: BorderRadius.circular(
          SizeConfig.radius_24,
        ),
      ),
      padding: EdgeInsets.all(
        SizeConfig.width_10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            AppStrings.waterConsumption,
            style: AppTextStyles.dmSansNormalBold.copyWith(
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: SizeConfig.height_8,
            ),
            height: 130.w,
            width: 130.w,
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  startAngle: 270,
                  endAngle: 270,
                  maximum: 300,
                  showLabels: false,
                  showTicks: false,
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      angle: 90,
                      widget: Text(
                        '185\n${AppStrings.litres}',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.dmSansExtraLargeBold.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                  pointers: const <GaugePointer>[
                    RangePointer(
                      value: 185,
                      cornerStyle: CornerStyle.bothCurve,
                      animationDuration: 500,
                      width: 0.17,
                      color: AppColors.black,
                      sizeUnit: GaugeSizeUnit.factor,
                    )
                  ],
                  axisLineStyle: const AxisLineStyle(
                    thickness: 0.17,
                    color: AppColors.white,
                    thicknessUnit: GaugeSizeUnit.factor,
                  ),
                )
              ],
            ),
          ),
          Text(
            '25% of ${AppStrings.ofDailyAverage}',
            style: AppTextStyles.dmSansSmallBold.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
