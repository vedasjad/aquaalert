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

class TotalConsumptionPieChart extends StatelessWidget {
  final List<Sector> sectors;

  const TotalConsumptionPieChart(
    this.sectors, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whitePure,
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.width_8,
      ),
      padding: EdgeInsets.all(
        SizeConfig.width_16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.totalConsumption,
            style: AppTextStyles.dmSansNormalBold,
          ),
          SizedBox(
            width: SizeConfig.getScreenWidth(),
            height: SizeConfig.getScreenHeight() * 0.25,
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Stack(
                children: [
                  SizedBox(
                    width: SizeConfig.getScreenWidth(),
                    height: SizeConfig.getScreenHeight() * 0.25,
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
              SizeConfig.width_12,
              SizeConfig.width_12,
              0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                sectors.length,
                (index) {
                  final sector = sectors[index];
                  return Row(
                    children: [
                      Container(
                        height: SizeConfig.width_12,
                        width: SizeConfig.width_12,
                        margin: EdgeInsets.only(
                          right: SizeConfig.width_4,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: sector.color,
                            width: SizeConfig.width_2,
                          ),
                        ),
                      ),
                      Text(
                        sector.label,
                        style: AppTextStyles.dmSansNormalRegular,
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  List<PieChartSectionData> _chartSections(List<Sector> sectors) {
    final List<PieChartSectionData> list = [];

    for (var i = 0; i < sectors.length; i++) {
      const double radius = 35.0;
      final data = PieChartSectionData(
        color: sectors[i].color,
        value: sectors[i].value,
        radius: radius,
        showTitle: false,
        badgeWidget: Text(
          '${sectors[i].value.toInt()}%',
          style: AppTextStyles.dmSansSmallSemiBold.copyWith(
            color: AppColors.whitePure,
          ),
        ),
        badgePositionPercentageOffset: 0.45,
      );
      list.add(data);
    }
    return list;
  }
}
