import 'dart:math';

import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/features/history/domain/models/leakage.dart';
import 'package:flutter/material.dart';

import '../widgets/leakage_notifier_widget.dart';
import '../widgets/usage_chart_widget/usage_chart_widget.dart';
import '../widgets/water_flow_widget.dart';
import '../widgets/water_usage_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final bool hasNotification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (hasNotification)
              Container(
                width: SizeConfig.getScreenWidth(),
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.width_8,
                ),
                color: AppColors.whitePure,
                alignment: Alignment.center,
                child: LeakageNotifierWidget(
                  leakage: Leakage(
                    dateTime: DateTime.now(),
                    amountInLitres: 15,
                    appliance: 'Tap',
                    location: AppStrings.bathroom,
                    reason: 'Left open',
                  ),
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
            hasNotification
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WaterUsageWidget(
                        hasFullWidth: !hasNotification,
                      ),
                      WaterFlowWidget(
                        hasFullWidth: !hasNotification,
                      ),
                    ],
                  )
                : Column(
                    children: [
                      WaterUsageWidget(
                        hasFullWidth: !hasNotification,
                      ),
                      WaterFlowWidget(
                        hasFullWidth: !hasNotification,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
