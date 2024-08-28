import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/features/stage/features/appliances/presentation/controllers/appliances_controller.dart';
import 'package:aquaalert/features/stage/features/appliances/presentation/pages/tabs/appliances_list_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/resources/app_resources.dart';
import '../../../../../stage/presentation/widgets/notification_icon_widget.dart';
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

  @override
  void initState() {
    tabController = TabController(
      length: controller.tabsTitle.length,
      vsync: this,
    );
    tabController.addListener(() {
      controller.updateCurrentTabIndex(tabController.index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        title: Text(
          AppStrings.appliances,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppliancesPageTabBar(
              controller: controller,
              tabController: tabController,
            ),
            SizedBox(
              width: AppSizes.getScreenWidth(),
              height: AppSizes.getScreenHeight() - kBottomNavigationBarHeight,
              child: GetBuilder<AppliancesController>(
                builder: (controller) {
                  return TabBarView(
                    controller: tabController,
                    children: [
                      AppliancesListTab(
                        appliancesInfo: controller.indoorOperationalAppliances,
                        onAddAppliance: controller.addAppliance,
                      ),
                      AppliancesListTab(
                        appliancesInfo: controller.outdoorOperationalAppliances,
                        onAddAppliance: controller.addAppliance,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
