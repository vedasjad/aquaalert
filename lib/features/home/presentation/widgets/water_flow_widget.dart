import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../app/configs/size_config.dart';

class WaterFlowWidget extends StatelessWidget {
  const WaterFlowWidget({
    required this.hasFullWidth,
    super.key,
  });

  final bool hasFullWidth;

  @override
  Widget build(BuildContext context) {
    return hasFullWidth
        ? Container(
            height: 165.h,
            width: SizeConfig.getScreenWidth(),
            color: AppColors.whitePure,
            margin: EdgeInsets.symmetric(
              vertical: SizeConfig.width_8,
            ),
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.width_14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.width_14,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.currentWaterFlow,
                        style: AppTextStyles.dmSansNormalRegular.copyWith(
                          color: AppColors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.radius_20,
                          ),
                          color: AppColors.blueLight,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.width_8,
                          vertical: SizeConfig.width_4,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              AppIcons.drop,
                              height: SizeConfig.width_12,
                              width: SizeConfig.width_12,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              width: SizeConfig.width_2,
                            ),
                            Text(
                              AppStrings.running,
                              style: AppTextStyles.dmSansNormalRegular,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: SizeConfig.height_8,
                      ),
                      height: 90.w,
                      width: 180.w,
                      child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: SizedBox(
                          height: 150.w,
                          width: 180.w,
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
                                maximumLabels: 6,
                                axisLabelStyle: const GaugeTextStyle(
                                  color: AppColors.slate500,
                                  fontWeight: FontWeight.w500,
                                ),
                                labelsPosition: ElementsPosition.outside,
                                ticksPosition: ElementsPosition.outside,
                                labelOffset: 6,
                                annotations: <GaugeAnnotation>[
                                  GaugeAnnotation(
                                    angle: 90,
                                    positionFactor: 0,
                                    widget: Text(
                                      '6 ${AppStrings.lPerMin}',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.dmSansExtraLargeBold
                                          .copyWith(
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                ],
                                pointers: const <GaugePointer>[
                                  RangePointer(
                                    value: 6,
                                    animationDuration: 500,
                                    width: 0.17,
                                    color: AppColors.skyBlue,
                                    sizeUnit: GaugeSizeUnit.factor,
                                  ),
                                ],
                                axisLineStyle: const AxisLineStyle(
                                  thickness: 0.17,
                                  color: AppColors.platinum,
                                  thicknessUnit: GaugeSizeUnit.factor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        AppStrings.highWaterFlowTip,
                        style: AppTextStyles.dmSansNormalRegular.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        : Container(
            height: 200.h,
            width: SizeConfig.getScreenWidth() / 2.05,
            color: AppColors.whitePure,
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.width_14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.width_14,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.currentWaterFlow,
                        style: AppTextStyles.dmSansSmallRegular.copyWith(
                          color: AppColors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.radius_20,
                          ),
                          color: AppColors.blueLight,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.width_8,
                          vertical: SizeConfig.width_4,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              AppIcons.drop,
                              height: SizeConfig.width_12,
                              width: SizeConfig.width_12,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: SizeConfig.height_12,
                  ),
                  height: 90.w,
                  width: 180.w,
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: SizedBox(
                      height: 150.w,
                      width: 180.w,
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
                            maximumLabels: 6,
                            axisLabelStyle: const GaugeTextStyle(
                              color: AppColors.slate500,
                              fontWeight: FontWeight.w500,
                            ),
                            labelsPosition: ElementsPosition.outside,
                            ticksPosition: ElementsPosition.outside,
                            labelOffset: 6,
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                angle: 90,
                                positionFactor: 0,
                                widget: Text(
                                  '6 ${AppStrings.lPerMin}',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.dmSansExtraLargeBold
                                      .copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                            ],
                            pointers: const <GaugePointer>[
                              RangePointer(
                                value: 6,
                                animationDuration: 500,
                                width: 0.17,
                                color: AppColors.skyBlue,
                                sizeUnit: GaugeSizeUnit.factor,
                              ),
                            ],
                            axisLineStyle: const AxisLineStyle(
                              thickness: 0.17,
                              color: AppColors.platinum,
                              thicknessUnit: GaugeSizeUnit.factor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.width_8,
                    ),
                    child: Text(
                      AppStrings.highWaterFlowTip,
                      style: AppTextStyles.dmSansSmallRegular.copyWith(
                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
