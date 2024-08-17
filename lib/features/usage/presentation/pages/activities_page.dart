import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/features/usage/presentation/widgets/room_wise_usage_pie_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/room_wise_usage_line_chart.dart';

class ActivitiesPage extends StatelessWidget {
  ActivitiesPage({super.key});

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
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.width_8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RoomWiseUsagePieChart(
              sectors,
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(sectors.length, (index) {
                return RoomWiseUsageLineChart(
                  sector: sectors[index],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
