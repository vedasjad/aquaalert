import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/features/home/presentation/widgets/usage_chart_widget/widgets/side_title_text_widget.dart';
import 'package:aquaalert/features/usage/presentation/widgets/room_wise_usage_pie_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RoomWiseUsageLineChart extends StatelessWidget {
  const RoomWiseUsageLineChart({
    super.key,
    required this.sector,
  });

  final Sector sector;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.width_150,
      width: SizeConfig.width_150,
      margin: EdgeInsets.all(
        SizeConfig.width_6,
      ),
      decoration: BoxDecoration(
        color: sector.color,
        borderRadius: BorderRadius.circular(
          SizeConfig.radius_26,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(
              SizeConfig.width_12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.width_4,
                    horizontal: SizeConfig.width_6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(
                      SizeConfig.radius_8,
                    ),
                  ),
                  child: Text(
                    sector.label,
                    style: AppTextStyles.lexendSmallRegular,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              SizeConfig.width_12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${sector.value.toInt()}L',
                  style: AppTextStyles.lexendExtraLargeBold.copyWith(
                    fontSize: SizeConfig.fontSize_28,
                    color: AppColors.white.withOpacity(0.7),
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(
                  SizeConfig.width_4,
                ),
                height: SizeConfig.width_100,
                width: SizeConfig.width_120,
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
                          dashArray: [0],
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
                          reservedSize: SizeConfig.width_22,
                          interval: 1,
                          getTitlesWidget: (value, meta) {
                            switch (value.toInt()) {
                              case 0:
                                return const SideTitleTextWidget("0");
                              case 10:
                                return const SideTitleTextWidget("10");
                              case 20:
                                return const SideTitleTextWidget("20");
                              case 30:
                                return const SideTitleTextWidget("30");
                              case 40:
                                return const SideTitleTextWidget("40");
                              case 50:
                                return const SideTitleTextWidget("50");
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
                        isCurved: false,
                        dotData: const FlDotData(show: true),
                        color: AppColors.white.withOpacity(0.7),
                        barWidth: 3,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
