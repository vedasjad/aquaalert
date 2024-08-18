import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
            width: AppSizes.getScreenWidth(),
            color: AppColors.white,
            margin: EdgeInsets.symmetric(
              vertical: AppSizes.width_8,
            ),
            padding: EdgeInsets.symmetric(
              vertical: AppSizes.width_14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.width_14,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.currentWaterFlow,
                        style: AppTextStyles.normalRegular.copyWith(
                          color: AppColors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppSizes.radius_20,
                          ),
                          color: AppColors.blueLight,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.width_8,
                          vertical: AppSizes.width_4,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              AppIcons.drop,
                              height: AppSizes.width_12,
                              width: AppSizes.width_12,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              width: AppSizes.w2,
                            ),
                            Text(
                              AppStrings.running,
                              style: AppTextStyles.normalRegular,
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
                        vertical: AppSizes.height_8,
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
                                      style:
                                          AppTextStyles.extraLargeBold.copyWith(
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
                                    color: AppColors.blue,
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
                        style: AppTextStyles.normalRegular.copyWith(
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
            width: AppSizes.getScreenWidth() / 2.05,
            color: AppColors.white,
            padding: EdgeInsets.symmetric(
              vertical: AppSizes.width_14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.width_14,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.currentWaterFlow,
                        style: AppTextStyles.smallRegular.copyWith(
                          color: AppColors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppSizes.radius_20,
                          ),
                          color: AppColors.blueLight,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.width_8,
                          vertical: AppSizes.width_4,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              AppIcons.drop,
                              height: AppSizes.width_12,
                              width: AppSizes.width_12,
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
                    vertical: AppSizes.height_12,
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
                                  style: AppTextStyles.extraLargeBold.copyWith(
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
                                color: AppColors.blue,
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
                      horizontal: AppSizes.width_8,
                    ),
                    child: Text(
                      AppStrings.highWaterFlowTip,
                      style: AppTextStyles.smallRegular.copyWith(
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
