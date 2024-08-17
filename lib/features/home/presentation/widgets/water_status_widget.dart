import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../app/configs/size_config.dart';

class WaterStatusWidget extends StatelessWidget {
  const WaterStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: SizeConfig.getScreenWidth() * 0.46,
      decoration: BoxDecoration(
        color: AppColors.paleBlue,
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
            AppStrings.waterStatus,
            style: AppTextStyles.dmSansNormalBold.copyWith(
              color: AppColors.deepViolet,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: SizeConfig.height_8,
            ),
            height: 130.w,
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  startAngle: 180,
                  endAngle: 0,
                  maximum: 10,
                  showLabels: true,
                  showTicks: true,
                  showLastLabel: true,
                  maximumLabels: 4,
                  axisLabelStyle: const GaugeTextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      angle: 90,
                      positionFactor: 0.5,
                      widget: Text(
                        '185 ${AppStrings.litresPerMin}',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.dmSansExtraLargeBold.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                  pointers: const <GaugePointer>[
                    RangePointer(
                      value: 6,
                      cornerStyle: CornerStyle.bothCurve,
                      animationDuration: 500,
                      width: 0.17,
                      color: AppColors.skyBlue,
                      sizeUnit: GaugeSizeUnit.factor,
                    ),
                    NeedlePointer(
                      value: 6,
                      knobStyle: KnobStyle(
                        knobRadius: 0.1,
                        color: AppColors.black,
                      ),
                      tailStyle: TailStyle(
                        width: 0.1,
                        color: AppColors.black,
                      ),
                      enableAnimation: true,
                      needleLength: 0.8,
                      needleStartWidth: 0,
                      needleEndWidth: 6,
                      needleColor: AppColors.black,
                    ),
                  ],
                  axisLineStyle: const AxisLineStyle(
                    thickness: 0.17,
                    color: AppColors.black,
                    cornerStyle: CornerStyle.bothCurve,
                    thicknessUnit: GaugeSizeUnit.factor,
                  ),
                )
              ],
            ),
          ),
          Text(
            AppStrings.waterRunning,
            style: AppTextStyles.dmSansSmallBold.copyWith(
              color: AppColors.skyBlue,
            ),
          ),
        ],
      ),
    );
  }
}
