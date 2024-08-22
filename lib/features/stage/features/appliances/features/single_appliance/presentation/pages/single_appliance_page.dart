import 'package:aquaalert/features/stage/features/appliances/domain/models/appliance_info.dart';
import 'package:aquaalert/features/stage/features/appliances/features/single_appliance/presentation/controllers/single_appliance_controller.dart';
import 'package:aquaalert/features/stage/features/appliances/features/single_appliance/presentation/pages/tabs/alerts_tab.dart';
import 'package:aquaalert/features/stage/features/appliances/features/single_appliance/presentation/pages/tabs/usage_statistics_tab.dart';
import 'package:aquaalert/features/stage/features/appliances/features/single_appliance/presentation/widgets/single_appliance_page_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../core/resources/app_resources.dart';
import '../../../../../../../../core/resources/resources.dart';
import '../../../../../../../../core/utils/date_time_helpers.dart';
import '../../../../../../../stage/presentation/widgets/notification_icon_widget.dart';

class SingleAppliancePage extends StatefulWidget {
  const SingleAppliancePage({
    required this.attributes,
    super.key,
  });

  final OperationalAppliance attributes;

  @override
  State<SingleAppliancePage> createState() => _SingleAppliancePageState();
}

class _SingleAppliancePageState extends State<SingleAppliancePage>
    with SingleTickerProviderStateMixin {
  final SingleApplianceController controller = Get.find();
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    final int initialIndex = Get.arguments?[AppMapKeys.tabIndex] ?? 0;
    tabController = TabController(
      initialIndex: initialIndex,
      length: controller.tabsTitle.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final operationalAppliance = widget.attributes;
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              AppIcons.arrowLeft,
              height: AppSizes.w24,
              width: AppSizes.w24,
              fit: BoxFit.contain,
            ),
          ),
        ),
        leadingWidth: AppSizes.w46,
        title: Text(
          operationalAppliance.appliance.name,
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
          children: [
            Container(
              color: AppColors.white,
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.w16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: AppSizes.w32,
                      ),
                      Container(
                        height: AppSizes.w6,
                        width: AppSizes.w6,
                        margin: EdgeInsets.only(
                          right: AppSizes.w4,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: operationalAppliance.status.isRunning
                              ? AppColors.blue
                              : AppColors.coolGrey,
                        ),
                      ),
                      Text(
                        operationalAppliance.status.isRunning
                            ? "Running"
                            : "Last ran at ${formatTimeFromDateTime(
                                operationalAppliance.status.lastUsed!,
                              )}",
                        style: AppTextStyles.normalRegular.copyWith(
                          color: AppColors.blackMatte,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppIcons.link,
                        height: AppSizes.w16,
                        width: AppSizes.w16,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        width: AppSizes.w4,
                      ),
                      Text(
                        operationalAppliance.location,
                        style: AppTextStyles.smallRegular.copyWith(
                          color: AppColors.blackMatte,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleAppliancePageTabBar(
              controller: controller,
              tabController: tabController,
            ),
            SizedBox(
              width: AppSizes.getScreenWidth(),
              height: AppSizes.getScreenHeight() - kBottomNavigationBarHeight,
              child: TabBarView(
                controller: tabController,
                children: const [
                  UsageStatisticsTab(),
                  AlertsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
