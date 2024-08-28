import 'package:aquaalert/core/utils/screen_util.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/controllers/add_main_controller_page/add_main_controller_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/resources/app_resources.dart';
import '../../../../../../../core/resources/resources.dart';
import '../../bindings/appliances_setup_page/appliances_setup_page_binding.dart';
import '../appliances_setup_page/appliances_setup_page.dart';

class AddMainControllerPage extends StatefulWidget {
  const AddMainControllerPage({super.key});

  @override
  State<AddMainControllerPage> createState() => _AddMainControllerPageState();
}

class _AddMainControllerPageState extends State<AddMainControllerPage> {
  final controller = Get.find<AddMainControllerPageController>();
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
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: SizedBox(
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
                        AppStrings.addMainController,
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
                        AppStrings.addMainControllerDescription,
                        style: AppTextStyles.normalRegular.copyWith(
                          height: 1.5,
                          letterSpacing: 0.14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AppGaps.h10,
              Expanded(
                child: Container(
                  color: AppColors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.v20,
                    vertical: AppSizes.v30,
                  ),
                  child: GetBuilder<AddMainControllerPageController>(
                    builder: (controller) {
                      return Column(
                        children: [
                          Container(
                            width: AppSizes.w327,
                            height: 370.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppSizes.f25,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                AppSizes.f25,
                              ),
                              child: !controller.isScanned.value
                                  ? Image.asset(
                                      AppImages.scanQr,
                                      fit: BoxFit.contain,
                                    )
                                  : Padding(
                                      padding: EdgeInsets.all(AppSizes.h16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AppGaps.h40,
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                AppIcons.greenTick,
                                                fit: BoxFit.contain,
                                                height: AppSizes.h200,
                                                width: 370.h,
                                              ),
                                              Text(
                                                'Main Controller added',
                                                style: AppTextStyles.largeBold,
                                              ),
                                              Text(
                                                'ID: 200102',
                                                style: AppTextStyles
                                                    .normalExtraBold,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                            ),
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              if (controller.isMainControllerAdded) {
                                Get.to(
                                  () => const AppliancesSetupPage(),
                                  binding: AppliancesSetupPageBinding(),
                                );
                              } else {
                                if (!controller.isScanned.value) {
                                  controller.addAppliance();
                                }
                              }
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
                                controller.isScanned.value
                                    ? AppStrings.next
                                    : AppStrings.scanQROnController,
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
                              Get.to(
                                () => const AppliancesSetupPage(),
                                binding: AppliancesSetupPageBinding(),
                              );
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
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
