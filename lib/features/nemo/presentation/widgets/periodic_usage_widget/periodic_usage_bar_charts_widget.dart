import 'dart:math';

import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/features/nemo/presentation/widgets/periodic_usage_widget/periodic_usage_bar_charts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../app/configs/size_config.dart';
import '../../../../../core/utils/date_time_helpers.dart';
import '../../controllers/nemo_controller.dart';

class PeriodicUsageBarChartsWidget extends StatelessWidget {
  const PeriodicUsageBarChartsWidget({
    super.key,
    required this.controller,
    required this.points,
  });

  final NemoController controller;
  final List<Point> points;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: SizeConfig.getScreenWidth() * 0.85,
        height: SizeConfig.getScreenWidth() * 0.8,
        padding: EdgeInsets.all(
          SizeConfig.width_22,
        ),
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.width_8,
        ),
        decoration: BoxDecoration(
          color: AppColors.whitePure,
          borderRadius: BorderRadius.circular(
            SizeConfig.radius_14,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    controller
                        .updatePageOffset(controller.pageOffset.value - 1);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.width_8,
                  ),
                  child: Text(
                    formatMonthFromDateTime(controller.pageOffset.value < 6
                        ? DateTime.now().subtract(Duration(
                            days: (6 - controller.pageOffset.value) * 31))
                        : DateTime.now().add(Duration(
                            days: (controller.pageOffset.value - 6) * 31))),
                    style: AppTextStyles.lexendExtraLargeMedium.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller
                        .updatePageOffset(controller.pageOffset.value + 1);
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.black,
                  ),
                )
              ],
            ),
            PeriodicUsageBarCharts(
              controller: controller,
              points: points,
            ),
          ],
        ),
      );
    });
  }
}
