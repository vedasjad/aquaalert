import 'dart:math';

import 'package:aquaalert/features/home/presentation/widgets/usage_chart_widget/usage_chart_widget.dart';
import 'package:aquaalert/features/home/presentation/widgets/water_usage_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/resources/app_resources.dart';

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
            points: List.generate(
              8,
              (index) => Point(
                index,
                Random().nextDouble() * 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
