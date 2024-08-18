import 'dart:math';

import 'package:aquaalert/features/stage/features/nemo/presentation/widgets/periodic_usage_widget/periodic_usage_bar_charts_widget.dart';
import 'package:aquaalert/features/stage/features/nemo/presentation/widgets/periodic_usage_widget/usage_tab_bar.dart';
import 'package:flutter/material.dart';

import '../../controllers/nemo_controller.dart';

class PeriodicUsageWidget extends StatelessWidget {
  const PeriodicUsageWidget({
    super.key,
    required this.controller,
    required this.points,
  });

  final NemoController controller;
  final List<Point> points;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            UsageTabBar(
              controller: controller,
            ),
            PeriodicUsageBarChartsWidget(
              controller: controller,
              points: points,
            ),
          ],
        ),
      ],
    );
  }
}
