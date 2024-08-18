import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class WaterUsageWidget extends StatelessWidget {
  const WaterUsageWidget({
    required this.hasFullWidth,
    super.key,
  });
  final bool hasFullWidth;

  @override
  Widget build(BuildContext context) {
    return hasFullWidth
        ? Container(
            height: 170.h,
            width: AppSizes.getScreenWidth(),
            color: AppColors.white,
            padding: EdgeInsets.all(
              AppSizes.width_14,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.todayWaterUsage,
                      style: AppTextStyles.normalRegular.copyWith(
                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: AppSizes.width_4,
                    ),
                    Image.asset(
                      AppIcons.info,
                      height: AppSizes.width_16,
                      width: AppSizes.width_16,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: AppSizes.height_8,
                      ),
                      height: 110.w,
                      width: 120.w,
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
                                  '185L',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.extraLargeBold.copyWith(
                                    color: AppColors.black,
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
                                color: AppColors.brightAmber,
                                sizeUnit: GaugeSizeUnit.factor,
                              )
                            ],
                            axisLineStyle: const AxisLineStyle(
                              thickness: 0.17,
                              color: AppColors.white2,
                              thicknessUnit: GaugeSizeUnit.factor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: AppSizes.w20,
                        ),
                        child: Text.rich(
                          TextSpan(
                            text: AppStrings.overHalfway.split('over')[0],
                            style: AppTextStyles.normalRegular,
                            children: [
                              TextSpan(
                                text: 'over halfway',
                                style: AppTextStyles.normalBold,
                              ),
                              TextSpan(
                                text:
                                    AppStrings.overHalfway.split('halfway')[1],
                              ),
                            ],
                          ),
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
            padding: EdgeInsets.all(
              AppSizes.width_14,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.todayWaterUsage,
                      style: AppTextStyles.smallRegular.copyWith(
                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: AppSizes.width_4,
                    ),
                    Image.asset(
                      AppIcons.info,
                      height: AppSizes.width_16,
                      width: AppSizes.width_16,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: AppSizes.height_8,
                    bottom: AppSizes.height_8,
                  ),
                  height: 100.w,
                  width: 100.w,
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
                              '185L',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.extraLargeBold.copyWith(
                                color: AppColors.black,
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
                            color: AppColors.brightAmber,
                            sizeUnit: GaugeSizeUnit.factor,
                          )
                        ],
                        axisLineStyle: const AxisLineStyle(
                          thickness: 0.17,
                          color: AppColors.white2,
                          thicknessUnit: GaugeSizeUnit.factor,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: AppStrings.overHalfway.split('over')[0],
                      style: AppTextStyles.smallRegular,
                      children: [
                        TextSpan(
                          text: 'over halfway',
                          style: AppTextStyles.smallBold,
                        ),
                        TextSpan(
                          text: AppStrings.overHalfway.split('halfway')[1],
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
  }
}
