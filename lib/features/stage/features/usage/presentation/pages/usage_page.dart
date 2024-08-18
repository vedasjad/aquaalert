import 'dart:math';

import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/features/stage/features/usage/presentation/widgets/total_consumption_pie_chart.dart';
import 'package:aquaalert/features/stage/presentation/widgets/notification_icon_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/room_wise_usage_chart.dart';

class UsagePage extends StatelessWidget {
  UsagePage({super.key});

  final sectors = [
    Sector(
      value: 30,
      color: AppColors.bathroom,
      label: AppStrings.bathroom,
    ),
    Sector(
      value: 20,
      color: AppColors.garage,
      label: AppStrings.garage,
    ),
    Sector(
      value: 35,
      color: AppColors.kitchen,
      label: AppStrings.kitchen,
    ),
    Sector(
      value: 15,
      color: AppColors.laundry,
      label: AppStrings.laundry,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        title: Text(
          AppStrings.myUsage,
          style: AppTextStyles.largeBold.copyWith(
            color: AppColors.black,
          ),
        ),
        actions: [
          IconWidget(
            iconPath: AppIcons.meatballsMenu,
            onTap: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TotalConsumptionPieChart(
              sectors,
            ),
            ...List.generate(
              sectors.length,
              (index) {
                return RoomWiseUsageChart(
                  sector: sectors[index],
                  points: List.generate(
                    24,
                    (index) => Point(
                      index,
                      Random().nextDouble() * 100,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
