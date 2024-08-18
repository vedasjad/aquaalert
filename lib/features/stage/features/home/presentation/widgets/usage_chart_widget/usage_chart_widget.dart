import 'dart:math';

import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/features/stage/features/home/presentation/controllers/home_controller.dart';
import 'package:aquaalert/features/stage/features/home/presentation/widgets/usage_chart_widget/widgets/side_title_text_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../../../../core/models/drop_down/drop_down_option_attributes.dart';
import '../my_drop_down_button.dart';

class UsageChartWidget extends StatelessWidget {
  const UsageChartWidget({
    // required this.points,
    required this.chartFrequencies,
    required this.onUpdateChartFrequency,
    super.key,
  });

  // final List<Point> points;
  final List<DropDownOptionAttributes> chartFrequencies;
  final Function(int) onUpdateChartFrequency;

  static const buttonTitles = [
    AppStrings.daily,
    AppStrings.weekly,
    AppStrings.monthly,
    AppStrings.bimonthly,
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      final isHourly = controller.selectedOptionIndex.value == 0;
      final isDaily = controller.selectedOptionIndex.value == 1;
      final isWeekly = controller.selectedOptionIndex.value == 2;
      final isMonthly = controller.selectedOptionIndex.value == 4;
      return Container(
        width: AppSizes.getScreenWidth(),
        margin: EdgeInsets.symmetric(
          vertical: AppSizes.width_8,
        ),
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.w16,
        ),
        color: AppColors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyDropDownButton(
                  options: chartFrequencies,
                  onTap: onUpdateChartFrequency,
                ),
              ],
            ),
            SizedBox(
              height: AppSizes.height_8,
            ),
            Container(
              width: AppSizes.getScreenWidth() * 0.9,
              padding: EdgeInsets.only(
                right: AppSizes.w4,
              ),
              child: AspectRatio(
                aspectRatio: 1.5,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: true,
                      verticalInterval: 100,
                      getDrawingVerticalLine: (value) {
                        return const FlLine(
                          color: AppColors.charcoal,
                          strokeWidth: 0.5,
                          dashArray: [0, 0],
                        );
                      },
                    ),
                    titlesData: FlTitlesData(
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 6,
                          reservedSize: AppSizes.width_22,
                          getTitlesWidget: (value, meta) {
                            if (isHourly) {
                              return getTitlesWidget(
                                value,
                                meta,
                                controller.xAxisLabelsHourly,
                              );
                            } else if (isDaily) {
                              return getTitlesWidget(
                                value,
                                meta,
                                controller.xAxisLabelsDaily,
                              );
                            } else if (isWeekly) {
                              return getTitlesWidget(
                                value,
                                meta,
                                controller.xAxisLabelsWeekly,
                              );
                            } else if (isMonthly) {
                              return getTitlesWidget(
                                value,
                                meta,
                                controller.xAxisLabelsMonthly,
                              );
                            }
                            return const SideTitleTextWidget("");
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: AppSizes.width_32,
                          interval: 2,
                          getTitlesWidget: (value, meta) {
                            if (isHourly) {
                              return getTitlesWidget(
                                value,
                                meta,
                                controller.yAxisLabelsHourly,
                              );
                            } else if (isDaily) {
                              return getTitlesWidget(
                                value,
                                meta,
                                controller.yAxisLabelsDaily,
                              );
                            } else if (isWeekly) {
                              return getTitlesWidget(
                                value,
                                meta,
                                controller.yAxisLabelsWeekly,
                              );
                            } else if (isMonthly) {
                              return getTitlesWidget(
                                value,
                                meta,
                                controller.yAxisLabelsMonthly,
                              );
                            }
                            return const SideTitleTextWidget(
                              "",
                            ); // Default case
                          },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    minX: 0,
                    maxX: controller.maxX,
                    minY: 0,
                    maxY: controller.maxY,
                    lineBarsData: [
                      LineChartBarData(
                        spots: getFLSpots(controller.chartData1),
                        isCurved: true,
                        dotData: const FlDotData(
                          show: false,
                        ),
                        color: AppColors.deepBlush,
                        barWidth: 3,
                      ),
                      LineChartBarData(
                        spots: getFLSpots(controller.chartData2),
                        isCurved: true,
                        dotData: const FlDotData(
                          show: false,
                        ),
                        color: AppColors.platinum,
                        barWidth: 3,
                      ),
                    ],
                    lineTouchData: LineTouchData(
                      touchTooltipData: LineTouchTooltipData(
                        getTooltipColor: (spot) {
                          return AppColors.white;
                        },
                        tooltipRoundedRadius: AppSizes.width_8,
                        getTooltipItems: (List<LineBarSpot> touchedSpots) {
                          return touchedSpots.map((LineBarSpot touchedSpot) {
                            return LineTooltipItem(
                              touchedSpot.y.toStringAsFixed(
                                2,
                              ),
                              AppTextStyles.normalSemiBold.copyWith(
                                color: touchedSpot.bar.color,
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  List<FlSpot> getFLSpots(List<Point> points) {
    return points.map(
      (point) {
        return FlSpot(
          point.x.toDouble(),
          point.y.toDouble(),
        );
      },
    ).toList();
  }

  Widget getTitlesWidget(double value, TitleMeta meta, List<String> labels) {
    int index = value.toInt();
    if (index >= 0 && index < labels.length) {
      return SideTitleTextWidget(labels[index]);
    }
    return const SideTitleTextWidget("");
  }
}
