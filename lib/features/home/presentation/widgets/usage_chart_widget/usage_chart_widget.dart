import 'dart:math';

import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/features/home/presentation/widgets/usage_chart_widget/widgets/side_title_text_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      width: SizeConfig.getScreenWidth(),
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.width_8,
      ),
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.width_16,
      ),
      color: AppColors.whitePure,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: SizeConfig.width_8,
                ),
                child: Row(
                  children: [
                    Text(
                      AppStrings.daily,
                      style: AppTextStyles.dmSansNormalSemiBold.copyWith(
                        color: AppColors.greyDavy,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.greyDavy,
                      size: 25.sp,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.height_8,
          ),
          Container(
            width: SizeConfig.getScreenWidth() * 0.9,
            padding: EdgeInsets.all(
              SizeConfig.width_4,
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
                        strokeWidth: 1,
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
                        interval: 1,
                        reservedSize: SizeConfig.width_22,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const SideTitleTextWidget("0:00");
                            case 1:
                              return const SideTitleTextWidget("6:00");
                            case 2:
                              return const SideTitleTextWidget("12:00");
                            case 3:
                              return const SideTitleTextWidget("18:00");
                            default:
                              return const SideTitleTextWidget("");
                          }
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: SizeConfig.width_26,
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const SideTitleTextWidget("0L");
                            case 10:
                              return const SideTitleTextWidget("10L");
                            case 20:
                              return const SideTitleTextWidget("20L");
                            case 30:
                              return const SideTitleTextWidget("30L");
                            case 40:
                              return const SideTitleTextWidget("40L");
                            case 50:
                              return const SideTitleTextWidget("50L");
                            default:
                              return const SideTitleTextWidget("");
                          }
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  minX: 0,
                  maxX: 3,
                  minY: 0,
                  maxY: 50,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(0.0, 12.3),
                        const FlSpot(0.4, 25.7),
                        const FlSpot(0.8, 38.9),
                        const FlSpot(1.2, 15.2),
                        const FlSpot(1.7, 45.3),
                        const FlSpot(2.1, 8.7),
                        const FlSpot(2.4, 30.1),
                        const FlSpot(2.7, 22.8),
                        const FlSpot(2.9, 48.5),
                        const FlSpot(3.0, 35.4),
                      ],
                      isCurved: true,
                      dotData: const FlDotData(
                        show: false,
                      ),
                      color: AppColors.deepBlush,
                      barWidth: 3,
                    ),
                    LineChartBarData(
                      spots: [
                        const FlSpot(0.0, 2.3),
                        const FlSpot(0.4, 15.7),
                        const FlSpot(0.8, 28.9),
                        const FlSpot(1.2, 5.2),
                        const FlSpot(1.7, 35.3),
                        const FlSpot(2.1, 0.7),
                        const FlSpot(2.4, 20.1),
                        const FlSpot(2.7, 12.8),
                        const FlSpot(2.9, 38.5),
                        const FlSpot(3.0, 25.4),
                      ],
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
                        return AppColors.whitePure;
                      },
                      tooltipRoundedRadius: SizeConfig.width_8,
                      getTooltipItems: (List<LineBarSpot> touchedSpots) {
                        return touchedSpots.map((LineBarSpot touchedSpot) {
                          return LineTooltipItem(
                            touchedSpot.y.toStringAsFixed(
                              2,
                            ),
                            AppTextStyles.dmSansNormalSemiBold.copyWith(
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
  }
}
