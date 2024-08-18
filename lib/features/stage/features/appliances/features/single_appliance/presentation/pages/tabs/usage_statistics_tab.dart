import 'package:aquaalert/features/stage/features/home/presentation/widgets/usage_chart_widget/usage_chart_widget.dart';
import 'package:aquaalert/features/stage/features/home/presentation/widgets/water_usage_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../core/models/drop_down/drop_down_option_attributes.dart';
import '../../../../../../../../../core/resources/app_resources.dart';

class UsageStatisticsTab extends StatelessWidget {
  const UsageStatisticsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.offWhite,
      child: Column(
        children: [
          const WaterUsageWidget(
            hasFullWidth: true,
          ),
          UsageChartWidget(
            chartFrequencies: [
              DropDownOptionAttributes(
                title: 'Hourly',
                isSelected: true,
              ),
              DropDownOptionAttributes(
                title: 'Daily',
              ),
              DropDownOptionAttributes(
                title: 'Weekly',
              ),
              DropDownOptionAttributes(
                title: 'Monthly',
              ),
            ],
            onUpdateChartFrequency: (index) {},
          ),
        ],
      ),
    );
  }
}
