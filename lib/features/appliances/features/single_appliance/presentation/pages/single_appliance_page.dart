import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/features/appliances/domain/models/appliance_info.dart';
import 'package:aquaalert/features/appliances/features/single_appliance/presentation/controllers/single_appliance_controller.dart';
import 'package:aquaalert/features/appliances/features/single_appliance/presentation/pages/tabs/alerts_tab.dart';
import 'package:aquaalert/features/appliances/features/single_appliance/presentation/pages/tabs/usage_statistics_tab.dart';
import 'package:aquaalert/features/appliances/features/single_appliance/presentation/widgets/single_appliance_page_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/resources/app_resources.dart';
import '../../../../../../core/resources/resources.dart';
import '../../../../../../core/utils/date_time_helpers.dart';
import '../../../../../stage/presentation/widgets/notification_icon_widget.dart';

class SingleAppliancePage extends StatefulWidget {
  const SingleAppliancePage({
    required this.attributes,
    super.key,
  });

  final ApplianceAttributes attributes;

  @override
  State<SingleAppliancePage> createState() => _SingleAppliancePageState();
}

class _SingleAppliancePageState extends State<SingleAppliancePage>
    with SingleTickerProviderStateMixin {
  final SingleApplianceController controller = Get.find();
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(
      length: controller.tabsTitle.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appliance = widget.attributes;
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(
        backgroundColor: AppColors.whitePure,
        surfaceTintColor: AppColors.whitePure,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              AppIcons.arrowLeft,
              height: SizeConfig.width_24,
              width: SizeConfig.width_24,
              fit: BoxFit.contain,
            ),
          ),
        ),
        leadingWidth: SizeConfig.width_46,
        title: Text(
          appliance.name,
          style: AppTextStyles.dmSansLargeBold.copyWith(
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
              color: AppColors.whitePure,
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.width_16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: SizeConfig.width_32,
                      ),
                      Container(
                        height: SizeConfig.width_6,
                        width: SizeConfig.width_6,
                        margin: EdgeInsets.only(
                          right: SizeConfig.width_4,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appliance.status.isRunning
                              ? AppColors.skyBlue
                              : AppColors.coolGrey,
                        ),
                      ),
                      Text(
                        appliance.status.isRunning
                            ? "Running"
                            : "Last ran at ${formatTimeFromDateTime(
                                appliance.status.lastUsed!,
                              )}",
                        style: AppTextStyles.dmSansNormalRegular.copyWith(
                          color: AppColors.blackMatte,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppIcons.link,
                        height: SizeConfig.width_16,
                        width: SizeConfig.width_16,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        width: SizeConfig.width_4,
                      ),
                      Text(
                        appliance.location,
                        style: AppTextStyles.dmSansSmallRegular.copyWith(
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
              width: SizeConfig.getScreenWidth(),
              height: SizeConfig.getScreenHeight() - kBottomNavigationBarHeight,
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
