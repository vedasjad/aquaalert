import 'dart:math';

import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_colors.dart';
import 'package:aquaalert/core/resources/app_text_styles.dart';
import 'package:aquaalert/features/home/presentation/widgets/usage_chart_widget/widgets/side_title_text_widget.dart';
import 'package:aquaalert/features/home/presentation/widgets/usage_chart_widget/widgets/usage_period_select_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources/app_strings.dart';

class UsageChartWidget extends StatelessWidget {
  const UsageChartWidget({
    required this.points,
    super.key,
  });

  final List<Point> points;

  static const buttonTitles = [
    AppStrings.daily,
    AppStrings.weekly,
    AppStrings.monthly,
    AppStrings.bimonthly,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.width_14,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              buttonTitles.length,
              (index) {
                return UsagePeriodSelectButton(
                  title: buttonTitles[index],
                  isSelected: index == 0,
                );
              },
            ),
          ),
          SizedBox(
            height: SizeConfig.height_4,
          ),
          Text(
            "400 Litres",
            style: AppTextStyles.dmSansExtraLargeBold.copyWith(
              fontSize: SizeConfig.fontSize_24,
            ),
          ),
          SizedBox(
            height: SizeConfig.height_8,
          ),
          SizedBox(
            width: SizeConfig.getScreenWidth() * 0.95,
            child: AspectRatio(
              aspectRatio: 1.5,
              child: BarChart(
                BarChartData(
                  barGroups: _chartGroups(),
                  borderData: FlBorderData(
                    border: Border.all(color: Colors.transparent),
                  ),
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: true,
                    verticalInterval: 100,
                    getDrawingVerticalLine: (value) {
                      return const FlLine(
                        color: AppColors.charcoal,
                        strokeWidth: 1,
                        dashArray: [0],
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: const SideTitleTextWidget('10:00'),
                              );
                            case 1:
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: const SideTitleTextWidget('11:00'),
                              );
                            case 2:
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: const SideTitleTextWidget('12:00'),
                              );
                            case 3:
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: const SideTitleTextWidget('13:00'),
                              );
                            case 4:
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: const SideTitleTextWidget('14:00'),
                              );
                            case 5:
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: const SideTitleTextWidget('15:00'),
                              );
                            case 6:
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: const SideTitleTextWidget('16:00'),
                              );
                            case 7:
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: const SideTitleTextWidget('17:00'),
                              );
                            default:
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: const SideTitleTextWidget(''),
                              );
                          }
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 50,
                        interval: 100,
                        getTitlesWidget: (value, meta) {
                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            child: SideTitleTextWidget('${value.toInt()}L'),
                          );
                        },
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _chartGroups() {
    return points.map(
      (point) {
        return BarChartGroupData(
          x: point.x.toInt(),
          barRods: [
            BarChartRodData(
              toY: point.y.toDouble(),
              color: AppColors.skyBlue,
              width: SizeConfig.width_24,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  SizeConfig.radius_4,
                ),
                topRight: Radius.circular(
                  SizeConfig.radius_4,
                ),
              ),
            ),
          ],
        );
      },
    ).toList();
  }
}
