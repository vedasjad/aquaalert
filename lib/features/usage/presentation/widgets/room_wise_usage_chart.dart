import 'dart:math';

import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/features/home/presentation/widgets/my_drop_down_button.dart';
import 'package:aquaalert/features/home/presentation/widgets/usage_chart_widget/widgets/side_title_text_widget.dart';
import 'package:aquaalert/features/usage/presentation/widgets/total_consumption_pie_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RoomWiseUsageChart extends StatelessWidget {
  const RoomWiseUsageChart({
    super.key,
    required this.points,
    required this.sector,
  });

  final Sector sector;
  final List<Point> points;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.width_150,
      width: SizeConfig.getScreenWidth(),
      margin: EdgeInsets.only(
        bottom: SizeConfig.width_10,
      ),
      color: AppColors.whitePure,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(
              SizeConfig.width_12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sector.label,
                  style: AppTextStyles.dmSansNormalBold,
                ),
                const MyDropDownButton(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(
              SizeConfig.width_4,
            ),
            height: SizeConfig.width_100,
            width: SizeConfig.getScreenWidth() * 0.95,
            alignment: Alignment.center,
            child: BarChart(
              BarChartData(
                barGroups: _chartGroups(),
                borderData: FlBorderData(
                  show: true,
                  border: Border(
                    bottom: BorderSide(
                      color: sector.color,
                      width: SizeConfig.width_2,
                    ),
                  ),
                ),
                gridData: const FlGridData(
                  show: false,
                ),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      interval: 12,
                      getTitlesWidget: (value, meta) {
                        switch (value.toInt()) {
                          case 0:
                            return SideTitleWidget(
                              axisSide: meta.axisSide,
                              child: const SideTitleTextWidget('0:00'),
                            );
                          case 12:
                            return SideTitleWidget(
                              axisSide: meta.axisSide,
                              child: const SideTitleTextWidget('12:00'),
                            );
                          case 23:
                            return SideTitleWidget(
                              axisSide: meta.axisSide,
                              child: const SideTitleTextWidget('23:00'),
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
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
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
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipColor: (spot) {
                      return AppColors.whitePure;
                    },
                    tooltipRoundedRadius: SizeConfig.width_8,
                    getTooltipItem: (
                      groupData,
                      groupIndex,
                      rodData,
                      rodIndex,
                    ) {
                      return BarTooltipItem(
                          '${groupIndex.toStringAsFixed(
                            0,
                          )}:00\n',
                          AppTextStyles.dmSansNormalSemiBold.copyWith(
                            color: AppColors.blackMatte,
                          ),
                          children: [
                            TextSpan(
                              text: '${rodData.toY.toStringAsFixed(
                                0,
                              )}L',
                              style:
                                  AppTextStyles.dmSansNormalSemiBold.copyWith(
                                color: rodData.color,
                              ),
                            ),
                          ]);
                    },
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
              color: sector.color,
              width: SizeConfig.width_12,
              borderRadius: BorderRadius.zero,
            ),
          ],
        );
      },
    ).toList();
  }
}
