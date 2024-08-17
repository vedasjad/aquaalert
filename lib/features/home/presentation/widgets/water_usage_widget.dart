import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../app/configs/size_config.dart';

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
            width: SizeConfig.getScreenWidth(),
            color: AppColors.whitePure,
            padding: EdgeInsets.all(
              SizeConfig.width_14,
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
                      style: AppTextStyles.dmSansNormalRegular.copyWith(
                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: SizeConfig.width_4,
                    ),
                    Image.asset(
                      AppIcons.info,
                      height: SizeConfig.width_16,
                      width: SizeConfig.width_16,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: SizeConfig.height_8,
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
                                  style: AppTextStyles.dmSansExtraLargeBold
                                      .copyWith(
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
                              color: AppColors.white,
                              thicknessUnit: GaugeSizeUnit.factor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.width_20,
                        ),
                        child: Text.rich(
                          TextSpan(
                            text: AppStrings.overHalfway.split('over')[0],
                            style: AppTextStyles.dmSansNormalRegular,
                            children: [
                              TextSpan(
                                text: 'over halfway',
                                style: AppTextStyles.dmSansNormalBold,
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
            width: SizeConfig.getScreenWidth() / 2.05,
            color: AppColors.whitePure,
            padding: EdgeInsets.all(
              SizeConfig.width_14,
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
                      style: AppTextStyles.dmSansSmallRegular.copyWith(
                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: SizeConfig.width_4,
                    ),
                    Image.asset(
                      AppIcons.info,
                      height: SizeConfig.width_16,
                      width: SizeConfig.width_16,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: SizeConfig.height_8,
                    bottom: SizeConfig.height_8,
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
                              style:
                                  AppTextStyles.dmSansExtraLargeBold.copyWith(
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
                          color: AppColors.white,
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
                      style: AppTextStyles.dmSansSmallRegular,
                      children: [
                        TextSpan(
                          text: 'over halfway',
                          style: AppTextStyles.dmSansSmallBold,
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
