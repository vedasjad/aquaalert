import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/bindings/appliances_setup_page/appliances_setup_page_binding.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/pages/add_main_controller_page/add_main_controller_page.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/pages/appliances_setup_page/appliances_setup_page.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/resources/app_resources.dart';
import '../../../../../../../core/resources/resources.dart';
import '../../bindings/add_main_controller_page/add_main_controller_page_binding.dart';
import '../../widgets/home_setup_page/decrease_count_button.dart';
import '../../widgets/home_setup_page/increase_count_button.dart';

class HomeSetupPage extends StatefulWidget {
  const HomeSetupPage({super.key});

  @override
  State<HomeSetupPage> createState() => _HomeSetupPageState();
}

class _HomeSetupPageState extends State<HomeSetupPage> {
  int numberOfPeople = 1;
  int numberOfBathrooms = 1;

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
                        AppStrings.tellUsAboutYourHome,
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
                        AppStrings.tellUsAboutYourHomeDescription,
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
                  child: Column(
                    children: [
                      SizedBox(
                        width: AppSizes.w327,
                        child: Text(
                          AppStrings.howManyPeopleLiveInYourHome,
                          style: AppTextStyles.mediumRegular.copyWith(
                            height: 1.5,
                            letterSpacing: 0.32,
                          ),
                        ),
                      ),
                      AppGaps.h10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DecreaseCountButton(
                            onTap: () {
                              setState(() {
                                if (numberOfPeople > 1) numberOfPeople--;
                              });
                            },
                          ),
                          AppGaps.w20,
                          SizedBox(
                            width: AppSizes.v50,
                            height: AppSizes.v50,
                            child: CustomTextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              controller: TextEditingController(
                                text: numberOfPeople.toString(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  numberOfPeople =
                                      int.tryParse(value) ?? numberOfPeople;
                                });
                              },
                            ),
                          ),
                          AppGaps.w20,
                          IncreaseCountButton(onTap: () {
                            setState(() {
                              numberOfPeople++;
                            });
                          }),
                        ],
                      ),
                      AppGaps.h20,
                      SizedBox(
                        width: AppSizes.w327,
                        child: Text(
                          AppStrings.howManyBathRoomsDoYouHave,
                          style: AppTextStyles.mediumRegular.copyWith(
                            height: 1.5,
                            letterSpacing: 0.32,
                          ),
                        ),
                      ),
                      AppGaps.h10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DecreaseCountButton(
                            onTap: () {
                              setState(() {
                                if (numberOfBathrooms > 1) numberOfBathrooms--;
                              });
                            },
                          ),
                          AppGaps.w20,
                          SizedBox(
                            width: AppSizes.v50,
                            height: AppSizes.v50,
                            child: CustomTextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              controller: TextEditingController(
                                text: numberOfBathrooms.toString(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  numberOfBathrooms =
                                      int.tryParse(value) ?? numberOfBathrooms;
                                });
                              },
                            ),
                          ),
                          AppGaps.w20,
                          IncreaseCountButton(
                            onTap: () {
                              setState(() {
                                numberOfBathrooms++;
                              });
                            },
                          ),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(
                            () => const AddMainControllerPage(),
                            binding: AddMainControllerPageBinding(),
                          );
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
