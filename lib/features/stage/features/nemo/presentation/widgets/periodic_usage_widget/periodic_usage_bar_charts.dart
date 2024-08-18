import 'dart:math';

import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/widgets/usage_chart_widget/widgets/side_title_text_widget.dart';
import '../../controllers/nemo_controller.dart';

class PeriodicUsageBarCharts extends StatelessWidget {
  const PeriodicUsageBarCharts({
    super.key,
    required this.controller,
    required this.points,
  });
  final NemoController controller;
  final List<Point> points;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: AppSizes.width_8),
      width: AppSizes.getScreenWidth() * 0.75,
      height: AppSizes.getScreenWidth() * 0.55,
      child: PageView(
        controller: controller.pageController.value,
        clipBehavior: Clip.none,
        children: List.generate(12, (index) {
          return BarChart(
            BarChartData(
              maxY: 300,
              minY: 0,
              barGroups: _chartGroups(),
              borderData: FlBorderData(
                border: Border.all(color: Colors.transparent),
              ),
              gridData: FlGridData(
                show: true,
                drawVerticalLine: true,
                verticalInterval: 50,
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
                    reservedSize: AppSizes.width_24,
                    interval: 7,
                    getTitlesWidget: (value, meta) {
                      switch (value.toInt()) {
                        case 1:
                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            child: const SideTitleTextWidget('01'),
                          );
                        case 7:
                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            child: const SideTitleTextWidget('07'),
                          );
                        case 14:
                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            child: const SideTitleTextWidget('14'),
                          );
                        case 21:
                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            child: const SideTitleTextWidget('21'),
                          );
                        case 28:
                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            child: const SideTitleTextWidget('28'),
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
                    reservedSize: AppSizes.width_35,
                    interval: 50,
                    getTitlesWidget: (value, meta) {
                      return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: SideTitleTextWidget(value.toInt().toString()),
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
          );
        }),
      ),
    );
  }

  List<BarChartGroupData> _chartGroups() {
    return points.map(
      (point) {
        return BarChartGroupData(
          x: point.x.toInt(),
          barsSpace: AppSizes.width_2,
          barRods: [
            BarChartRodData(
              toY: point.y.toDouble(),
              color: AppColors.skyBlue,
              width: AppSizes.width_6,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  AppSizes.radius_2,
                ),
                topRight: Radius.circular(
                  AppSizes.radius_2,
                ),
              ),
            ),
          ],
        );
      },
    ).toList();
  }
}
