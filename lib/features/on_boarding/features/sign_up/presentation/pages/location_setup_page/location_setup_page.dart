import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text_field.dart';
import '../home_setup_page/home_setup_page.dart';

class LocationSetupPage extends StatefulWidget {
  const LocationSetupPage({super.key});

  @override
  State<LocationSetupPage> createState() => _LocationSetupPageState();
}

class _LocationSetupPageState extends State<LocationSetupPage> {
  final _formKey = GlobalKey<FormState>();

  String houseFlatNo = '';
  String areaLocality = '';
  String city = '';
  String state = '';
  String pinCode = '';

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
              kToolbarHeight -
              kBottomNavigationBarHeight / 2,
          child: Form(
            key: _formKey,
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
                          AppStrings.setYourLocation,
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
                          AppStrings.setYourLocationDescription,
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
                    width: AppSizes.getScreenWidth(),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.v20,
                      vertical: AppSizes.v30,
                    ),
                    color: AppColors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Image.asset(
                            AppIcons.gps,
                            color: AppColors.blue,
                            height: AppSizes.v24,
                            width: AppSizes.v24,
                            fit: BoxFit.contain,
                          ),
                          label: Text(
                            AppStrings.useMyCurrentLocation,
                            style: AppTextStyles.normalMedium.copyWith(
                              letterSpacing: -0.14,
                              color: AppColors.blue,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.zero,
                          ),
                        ),
                        AppGaps.h20,
                        CustomTextField(
                          label: AppStrings.houseOrFlatNo,
                          onChanged: (value) => houseFlatNo = value,
                        ),
                        AppGaps.h20,
                        CustomTextField(
                          label: AppStrings.areaOrLocalityOrLandmark,
                          onChanged: (value) => areaLocality = value,
                        ),
                        AppGaps.h20,
                        CustomTextField(
                          label: AppStrings.city,
                          onChanged: (value) => city = value,
                        ),
                        AppGaps.h20,
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                label: AppStrings.state,
                                onChanged: (value) => state = value,
                              ),
                            ),
                            AppGaps.w10,
                            Expanded(
                              child: CustomTextField(
                                label: AppStrings.pinCode,
                                keyboardType: TextInputType.number,
                                onChanged: (value) => pinCode = value,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Get.to(() => const HomeSetupPage());
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
                            Get.to(() => const HomeSetupPage());
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
      ),
    );
  }
}
