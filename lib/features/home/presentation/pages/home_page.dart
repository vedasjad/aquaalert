import 'dart:math';

import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_text_styles.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/utils/date_time_helpers.dart';
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
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leadingWidth: SizeConfig.width_34 + SizeConfig.width_4 * 4,
        leading: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.width_8,
            top: SizeConfig.width_4,
          ),
          child: Image.asset(
            AppImages.profileImage,
            height: SizeConfig.width_34,
            width: SizeConfig.width_34,
            fit: BoxFit.contain,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Anubha!",
              style: AppTextStyles.lexendExtraLargeBold.copyWith(
                color: AppColors.deepViolet,
              ),
            ),
            SizedBox(
              height: SizeConfig.width_2,
            ),
            Text(
              formatDateFromDateTime(DateTime.now()),
              style: AppTextStyles.lexendNormalRegular.copyWith(
                color: AppColors.deepViolet,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(
              SizeConfig.width_6,
            ),
            height: SizeConfig.width_34,
            width: SizeConfig.width_34,
            decoration: const BoxDecoration(
              color: AppColors.black,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              AppIcons.bell,
              height: SizeConfig.width_16,
              width: SizeConfig.width_16,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: SizeConfig.width_4,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          SizeConfig.width_8,
        ),
        child: Column(
          children: [
            const LeakageNotifierWidget(),
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
