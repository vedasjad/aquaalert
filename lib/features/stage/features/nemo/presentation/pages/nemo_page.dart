import 'dart:math';

import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/features/stage/features/nemo/presentation/controllers/nemo_controller.dart';
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
      backgroundColor: AppColors.offWhite,
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
                horizontal: AppSizes.width_30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.monthlyProgress,
                        style: AppTextStyles.extraLargeRegular,
                      ),
                      SizedBox(
                        height: AppSizes.height_4,
                      ),
                      SizedBox(
                        width: AppSizes.getScreenWidth() * 0.75,
                        child: Text(
                          AppStrings.monthlyProgressStatement(11),
                          style: AppTextStyles.normalRegular,
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
                            width: AppSizes.width_46,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.w10,
                              vertical: AppSizes.width_4,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.black,
                              borderRadius: BorderRadius.circular(
                                AppSizes.r4,
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
                                  style: AppTextStyles.normalRegular.copyWith(
                                    color: AppColors.white2,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: AppSizes.width_4,
                      ),
                      const MonthlyUsageLinearIndicator(
                        ltrsPerDay: '251',
                        isPrevMonth: true,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: AppSizes.width_8),
                        padding: EdgeInsets.all(
                          AppSizes.width_8,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.gunMetal,
                          borderRadius: BorderRadius.circular(
                            AppSizes.radius_6,
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppStrings.goalStreak,
                                  style: AppTextStyles.normalRegular.copyWith(
                                    color: AppColors.white2,
                                  ),
                                ),
                                Text(
                                  AppStrings.daysInARow(10),
                                  style:
                                      AppTextStyles.extraLargeMedium.copyWith(
                                    color: AppColors.white2,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: List.generate(19, (index) {
                                return Container(
                                  height: AppSizes.width_12,
                                  width: AppSizes.width_3,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: AppSizes.width_2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: index % 8 == 0
                                        ? Colors.transparent
                                        : index < 7
                                            ? AppColors.white2
                                            : AppColors.lightSeaGreen,
                                    borderRadius: BorderRadius.circular(
                                      AppSizes.radius_2,
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
