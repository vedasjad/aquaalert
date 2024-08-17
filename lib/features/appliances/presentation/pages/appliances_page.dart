import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/features/appliances/domain/models/appliance_info.dart';
import 'package:aquaalert/features/appliances/presentation/controllers/appliances_controller.dart';
import 'package:aquaalert/features/appliances/presentation/pages/tabs/appliances_indoor_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/app_resources.dart';
import '../../../stage/presentation/widgets/notification_icon_widget.dart';
import '../widgets/appliances_page_tab_bar.dart';

class AppliancesPage extends StatefulWidget {
  const AppliancesPage({
    super.key,
  });

  @override
  State<AppliancesPage> createState() => _AppliancesPageState();
}

class _AppliancesPageState extends State<AppliancesPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final AppliancesController controller = Get.find();

  final appliancesInfo = [
    ApplianceAttributes(
      iconPath: AppIcons.faucet,
      location: "Bedroom 1",
      status: ApplianceStatus(
        isRunning: true,
      ),
      name: "Faucet",
    ),
    ApplianceAttributes(
      iconPath: AppIcons.washingMachine,
      location: "Outdoor",
      status: ApplianceStatus(
        isRunning: false,
        lastUsed: DateTime.now(),
      ),
      name: "Washing Machine",
    ),
    ApplianceAttributes(
      iconPath: AppIcons.shower,
      location: "Master",
      status: ApplianceStatus(
        isRunning: false,
        lastUsed: DateTime.now(),
      ),
      name: "Shower 3",
    ),
    ApplianceAttributes(
      iconPath: AppIcons.rOSystem,
      location: "Kitchen",
      status: ApplianceStatus(
        isRunning: false,
        lastUsed: DateTime.now(),
      ),
      name: "RO System",
    ),
  ];
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
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(
        backgroundColor: AppColors.whitePure,
        surfaceTintColor: AppColors.whitePure,
        title: Text(
          AppStrings.appliances,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppliancesPageTabBar(
              controller: controller,
              tabController: tabController,
            ),
            SizedBox(
              width: SizeConfig.getScreenWidth(),
              height: SizeConfig.getScreenHeight() - kBottomNavigationBarHeight,
              child: TabBarView(
                controller: tabController,
                children: [
                  AppliancesIndoorTab(
                    appliancesInfo: appliancesInfo,
                  ),
                  AppliancesIndoorTab(
                    appliancesInfo: appliancesInfo,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
