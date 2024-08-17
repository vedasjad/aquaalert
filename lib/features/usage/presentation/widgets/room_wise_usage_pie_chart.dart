import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Sector {
  final double value;
  final Color color;
  final String label;

  Sector({
    required this.value,
    required this.color,
    required this.label,
  });
}

class RoomWiseUsagePieChart extends StatelessWidget {
  final List<Sector> sectors;

  RoomWiseUsagePieChart(
    this.sectors, {
    super.key,
  });

  final List<GlobalKey> badgeKeys = [];
  final List<GlobalKey> labelKeys = [];

  @override
  Widget build(BuildContext context) {
    badgeKeys.clear();
    labelKeys.clear();

    for (var i = 0; i < sectors.length; i++) {
      badgeKeys.add(GlobalKey(debugLabel: 'badge_$i'));
      labelKeys.add(GlobalKey(debugLabel: 'label_$i'));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: SizeConfig.getScreenWidth(),
          height: SizeConfig.getScreenHeight() * 0.33,
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Stack(
              children: [
                SizedBox(
                  width: SizeConfig.getScreenWidth(),
                  height: SizeConfig.getScreenHeight() * 0.33,
                  child: PieChart(
                    PieChartData(
                      sections: _chartSections(sectors),
                      centerSpaceRadius: 60,
                      sectionsSpace: 0,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "287L",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
            SizeConfig.width_12,
            0,
            SizeConfig.width_12,
            SizeConfig.width_14,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              sectors.length,
              (index) {
                return Row(
                  children: [
                    Container(
                      height: SizeConfig.width_12,
                      width: SizeConfig.width_12,
                      margin: EdgeInsets.only(
                        right: SizeConfig.width_6,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: sectors[index].color,
                      ),
                    ),
                    Text(
                      sectors[index].label,
                      style: AppTextStyles.dmSansNormalRegular,
                    ),
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }

  List<PieChartSectionData> _chartSections(List<Sector> sectors) {
    final List<PieChartSectionData> list = [];

    for (var i = 0; i < sectors.length; i++) {
      const double radius = 30.0;
      final data = PieChartSectionData(
        color: sectors[i].color,
        value: sectors[i].value,
        radius: radius,
        showTitle: false,
        badgeWidget: Text(
          key: badgeKeys[i],
          '${sectors[i].value} %',
          style: AppTextStyles.dmSansNormalRegular,
        ),
        badgePositionPercentageOffset: 2,
      );
      list.add(data);
    }
    return list;
  }
}
