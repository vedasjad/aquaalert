import 'package:aquaalert/app/routes/app_routes.dart';
import 'package:aquaalert/core/entities/appliances/appliance.dart';
import 'package:aquaalert/core/utils/logger.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/controllers/appliances_setup_page/appliances_setup_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/resources/app_resources.dart';
import '../../../../../../../core/resources/resources.dart';
import '../../widgets/appliances_setup_page/appliances_setup_page_tab_bar.dart';

class AppliancesSetupPage extends StatefulWidget {
  const AppliancesSetupPage({super.key});

  @override
  State<AppliancesSetupPage> createState() => _AppliancesSetupPageState();
}

class _AppliancesSetupPageState extends State<AppliancesSetupPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final Set<Appliance> _selectedAppliances = {};

  final AppliancesSetupPageController controller = Get.find();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            AppIcons.arrowLeft,
            color: AppColors.greyNeutral,
            height: AppSizes.v24,
            width: AppSizes.v24,
            fit: BoxFit.contain,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        elevation: 0,
      ),
      body: SizedBox(
        height: AppSizes.getScreenHeight() -
            kBottomNavigationBarHeight / 2 -
            kToolbarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppSizes.getScreenWidth(),
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.v20,
                vertical: AppSizes.v30,
              ),
              color: AppColors.white,
              child: Column(
                children: [
                  SizedBox(
                    width: AppSizes.w327,
                    child: Text(
                      AppStrings.yourHomeAppliances,
                      style: AppTextStyles.extraLargeBold.copyWith(
                        height: 0.07,
                        letterSpacing: -0.20,
                      ),
                    ),
                  ),
                  AppGaps.h20,
                  SizedBox(
                    width: AppSizes.w327,
                    child: Text(
                      AppStrings.yourHomeAppliancesDescription,
                      style: AppTextStyles.normalRegular.copyWith(
                        height: 1.5,
                        letterSpacing: 0.14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppliancesSetupPageTabBar(
              controller: controller,
              tabController: _tabController,
            ),
            Expanded(
              child: Container(
                width: AppSizes.getScreenWidth(),
                color: AppColors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.v20,
                ),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildApplianceGrid(
                      isIndoor: true,
                    ),
                    _buildApplianceGrid(
                      isIndoor: false,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: AppSizes.getScreenWidth(),
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.v20,
                vertical: AppSizes.v10,
              ),
              color: AppColors.white,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(AppRoutes.stage);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppSizes.r4,
                        ),
                      ),
                    ),
                    child: Container(
                      width: AppSizes.w327,
                      height: AppSizes.h48,
                      alignment: Alignment.center,
                      child: Text(
                        AppStrings.next,
                        style: AppTextStyles.normalMedium.copyWith(
                          letterSpacing: 0.16,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  AppGaps.h10,
                  TextButton(
                    onPressed: () {
                      Get.offAllNamed(AppRoutes.stage);
                    },
                    child: Center(
                      child: Text(
                        AppStrings.skip,
                        style: AppTextStyles.normalMedium.copyWith(
                          letterSpacing: 0.16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildApplianceGrid({
    required bool isIndoor,
  }) {
    List<Appliance> appliances = isIndoor
        ? controller.indoorAppliances.toList()
        : controller.outdoorAppliances.toList();
    log.wtf(appliances);
    return GridView.builder(
      itemCount: appliances.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final appliance = appliances[index];
        final isSelected = _selectedAppliances.contains(appliance);
        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                _selectedAppliances.remove(appliance);
              } else {
                _selectedAppliances.add(appliance);
              }
            });
          },
          child: Container(
            margin: EdgeInsets.only(
              top: AppSizes.v20,
            ),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.blueLight : AppColors.offWhite,
              borderRadius: BorderRadius.circular(
                AppSizes.r10,
              ),
              border: Border.all(
                color: isSelected ? AppColors.blue : Colors.transparent,
                width: 1,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  appliance.iconPath,
                  height: AppSizes.v50,
                  width: AppSizes.v50,
                  fit: BoxFit.contain,
                  color: AppColors.blackMatte,
                ),
                const SizedBox(height: 10),
                Text(
                  appliance.name,
                  style: AppTextStyles.normalMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
