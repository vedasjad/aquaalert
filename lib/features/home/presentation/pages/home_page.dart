import 'dart:math';

import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_strings.dart';
import 'package:aquaalert/features/history/domain/models/leakage.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_colors.dart';
import '../widgets/leakage_notifier_widget.dart';
import '../widgets/usage_chart_widget/usage_chart_widget.dart';
import '../widgets/water_consumption_widget.dart';
import '../widgets/water_status_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          SizeConfig.width_8,
        ),
        child: Column(
          children: [
            LeakageNotifierWidget(
              leakage: Leakage(
                dateTime: DateTime.now(),
                amountInLitres: 15,
                equipment: 'Tap',
                location: AppStrings.bathroom,
                reason: 'Left open',
              ),
            ),
            UsageChartWidget(
              points: List.generate(
                8,
                (index) => Point(
                  index,
                  index == 0 ? 150 : index * 71.5,
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WaterConsumptionWidget(),
                WaterStatusWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
