import 'package:aquaalert/core/entities/appliances/appliance.dart';
import 'package:aquaalert/core/enums_with_extensions/appliance_type.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/features/stage/features/appliances/domain/entities/leakage.dart';
import 'package:aquaalert/features/stage/features/appliances/domain/entities/operational_appliance.dart';
import 'package:aquaalert/features/stage/features/appliances/features/single_appliance/presentation/bindings/single_appliance_binding.dart';
import 'package:aquaalert/features/stage/features/appliances/features/single_appliance/presentation/pages/single_appliance_page.dart';
import 'package:aquaalert/features/stage/features/home/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/resources/resources.dart';
import '../../../../presentation/widgets/notification_icon_widget.dart';
import '../../../appliances/domain/entities/appliance_status.dart';
import '../widgets/leakage_notifier_widget.dart';
import '../widgets/usage_chart_widget/usage_chart_widget.dart';
import '../widgets/water_flow_widget.dart';
import '../widgets/water_usage_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final bool hasNotification = true;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        backgroundColor: AppColors.offWhite,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          surfaceTintColor: AppColors.white,
          title: Text(
            "Hello, Asjad!",
            style: AppTextStyles.largeBold.copyWith(
              color: AppColors.black,
            ),
          ),
          actions: [
            IconWidget(
              iconPath: AppIcons.bell,
              onTap: () {
                Get.to(
                  () => SingleAppliancePage(
                    attributes: OperationalAppliance(
                      location: AppStrings.bathroom,
                      status: ApplianceStatus(
                        isRunning: true,
                      ),
                      appliance: Appliance(
                        name: "Faucet",
                        iconPath: AppIcons.tap,
                        isIndoor: true,
                        applianceType: ApplianceType.tap,
                      ),
                      ipAddress: '127.98.67.89',
                      id: 'indoor2',
                    ),
                  ),
                  binding: SingleApplianceBinding(),
                  arguments: {
                    AppMapKeys.tabIndex: 1,
                  },
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              if (hasNotification)
                Container(
                  width: AppSizes.getScreenWidth(),
                  padding: EdgeInsets.symmetric(
                    vertical: AppSizes.w8,
                  ),
                  color: AppColors.white,
                  alignment: Alignment.center,
                  child: LeakageNotifierWidget(
                    leakage: Leakage(
                      dateTime: DateTime.now(),
                      amountInLitres: 15,
                      appliance: 'Faucet',
                      location: AppStrings.bathroom,
                      reason: 'Left open',
                    ),
                  ),
                ),
              UsageChartWidget(
                // points: List.generate(
                //   8,
                //   (index) => Point(
                //     index,
                //     Random().nextDouble() * 4,
                //   ),
                // ),
                onUpdateChartFrequency: (index) {
                  controller.updateSelectedOptionIndex(index);
                },
                chartFrequencies: controller.options,
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
    });
  }
}
