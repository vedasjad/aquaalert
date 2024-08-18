import 'package:aquaalert/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/app_resources.dart';
import '../../../../core/resources/resources.dart';
import '../../features/sign_up/presentation/pages/sign_up_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // Placeholder for logo
          Image.asset(
            AppImages.a,
            height: AppSizes.v100,
            width: AppSizes.v100,
          ),
          AppGaps.h20,
          Image.asset(
            AppImages.aquaAlert,
            height: AppSizes.v100,
            width: AppSizes.v300,
          ),
          AppGaps.h20,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.v30),
            child: SizedBox(
              width: AppSizes.w238,
              child: Text(
                AppStrings.appDescription,
                style: AppTextStyles.mediumRegular.copyWith(
                  height: 1.75,
                  letterSpacing: -0.14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.w20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(AppRoutes.stage);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      AppSizes.v400,
                      AppSizes.v48,
                    ),
                    backgroundColor: AppColors.skyBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppSizes.r4,
                      ),
                    ),
                  ),
                  child: Text(
                    AppStrings.logIn,
                    style: AppTextStyles.normalMedium.copyWith(
                      letterSpacing: 0.16,
                      color: AppColors.white,
                    ),
                  ),
                ),
                AppGaps.h20,
                Text(
                  AppStrings.isNewUser,
                  style: AppTextStyles.smallRegular,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => const SignUpPage());
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      AppSizes.v400,
                      AppSizes.v48,
                    ),
                    backgroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppSizes.r4,
                      ),
                      side: const BorderSide(
                        color: AppColors.skyBlue,
                      ),
                    ),
                  ),
                  child: Text(
                    AppStrings.signUp,
                    style: AppTextStyles.normalMedium.copyWith(
                      letterSpacing: 0.16,
                      color: AppColors.skyBlue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AppGaps.h30,
        ],
      ),
    );
  }
}
