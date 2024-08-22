import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:flutter/material.dart';
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
            height: AppSizes.h165,
            width: AppSizes.getScreenWidth(),
            color: AppColors.white,
            margin: EdgeInsets.symmetric(
              vertical: AppSizes.w8,
            ),
            padding: EdgeInsets.symmetric(
              vertical: AppSizes.w14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w14,
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
                            AppSizes.r20,
                          ),
                          color: AppColors.blueLight,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.w8,
                          vertical: AppSizes.w4,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              AppIcons.drop,
                              height: AppSizes.w12,
                              width: AppSizes.w12,
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
                        vertical: AppSizes.h8,
                      ),
                      height: AppSizes.v90,
                      width: AppSizes.w180,
                      child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: SizedBox(
                          height: AppSizes.w150,
                          width: AppSizes.w180,
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
            height: AppSizes.h200,
            width: AppSizes.getScreenWidth() / 2.05,
            color: AppColors.white,
            padding: EdgeInsets.symmetric(
              vertical: AppSizes.w14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w14,
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
                            AppSizes.r20,
                          ),
                          color: AppColors.blueLight,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.w8,
                          vertical: AppSizes.w4,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              AppIcons.drop,
                              height: AppSizes.w12,
                              width: AppSizes.w12,
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
                    vertical: AppSizes.h12,
                  ),
                  height: AppSizes.w90,
                  width: AppSizes.w180,
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: SizedBox(
                      height: AppSizes.w150,
                      width: AppSizes.w180,
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
                      horizontal: AppSizes.w8,
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
