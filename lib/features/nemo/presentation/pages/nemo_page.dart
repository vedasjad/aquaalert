import 'dart:math';

import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/features/nemo/presentation/controllers/nemo_controller.dart';
import 'package:aquaalert/features/stage/presentation/widgets/notification_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/monthly_usage_linear_indicator.dart';
import '../widgets/periodic_usage_widget/periodic_usage_widget.dart';

class NemoPage extends StatelessWidget {
  const NemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final NemoController controller = Get.find();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        actions: [
          IconWidget(
            iconPath: AppIcons.bell,
            onTap: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PeriodicUsageWidget(
              controller: controller,
              points: const [
                Point(1, 250),
                Point(2, 130),
                Point(3, 290),
                Point(4, 45),
                Point(5, 175),
                Point(6, 210),
                Point(7, 85),
                Point(8, 220),
                Point(9, 60),
                Point(10, 140),
                Point(11, 300),
                Point(12, 15),
                Point(13, 260),
                Point(14, 100),
                Point(15, 190),
                Point(16, 270),
                Point(17, 30),
                Point(18, 240),
                Point(19, 90),
                Point(20, 280),
                Point(21, 50),
                Point(22, 160),
                Point(23, 230),
                Point(24, 70),
                Point(25, 200),
                Point(26, 110),
                Point(27, 170),
                Point(28, 250),
                Point(29, 40),
                Point(30, 135),
                Point(31, 285),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.width_30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.monthlyProgress,
                        style: AppTextStyles.lexendExtraLargeRegular,
                      ),
                      SizedBox(
                        height: SizeConfig.height_4,
                      ),
                      SizedBox(
                        width: SizeConfig.getScreenWidth() * 0.75,
                        child: Text(
                          AppStrings.monthlyProgressStatement(11),
                          style: AppTextStyles.lexendNormalRegular,
                          maxLines: 2,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const MonthlyUsageLinearIndicator(
                            ltrsPerDay: '226',
                          ),
                          SizedBox(
                            width: SizeConfig.width_50,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.width_10,
                              vertical: SizeConfig.width_4,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.black,
                              borderRadius: BorderRadius.circular(
                                SizeConfig.radius_4,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.greenAccent,
                                ),
                                Text(
                                  '11%',
                                  style: AppTextStyles.lexendNormalRegular
                                      .copyWith(
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.width_4,
                      ),
                      const MonthlyUsageLinearIndicator(
                        ltrsPerDay: '251',
                        isPrevMonth: true,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: SizeConfig.width_8),
                        padding: EdgeInsets.all(
                          SizeConfig.width_8,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.gunMetal,
                          borderRadius: BorderRadius.circular(
                            SizeConfig.radius_6,
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppStrings.goalStreak,
                                  style: AppTextStyles.lexendNormalRegular
                                      .copyWith(
                                    color: AppColors.white,
                                  ),
                                ),
                                Text(
                                  AppStrings.daysInARow(10),
                                  style: AppTextStyles.lexendExtraLargeMedium
                                      .copyWith(
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: List.generate(19, (index) {
                                return Container(
                                  height: SizeConfig.width_12,
                                  width: SizeConfig.width_3,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.width_2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: index % 8 == 0
                                        ? Colors.transparent
                                        : index < 7
                                            ? AppColors.white
                                            : AppColors.lightSeaGreen,
                                    borderRadius: BorderRadius.circular(
                                      SizeConfig.radius_2,
                                    ),
                                  ),
                                );
                              }),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
