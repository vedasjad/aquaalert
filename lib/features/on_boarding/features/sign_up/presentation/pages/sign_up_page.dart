import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/features/on_boarding/features/login/presentation/pages/login_page.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/pages/location_setup_page/location_setup_page.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool agreeToPrivacy = false;
  bool agreeToDataProcessing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.all(
          AppSizes.v20,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          AppStrings.signUp,
                          style: AppTextStyles.extraLargeExtraBold.copyWith(
                            letterSpacing: -0.20,
                          ),
                        ),
                        SizedBox(height: AppSizes.w10),
                        Text(
                          AppStrings.helloThereWelcome,
                          style: AppTextStyles.normalBold.copyWith(
                            letterSpacing: -0.14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppGaps.w10,
                  Image.asset(
                    AppImages.a,
                    height: AppSizes.w75,
                    width: AppSizes.w75,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              AppGaps.h30,
              const CustomTextField(
                label: AppStrings.name,
              ),
              AppGaps.h30,
              const CustomTextField(
                label: AppStrings.phoneNumber,
                prefixText: '+91 ',
                keyboardType: TextInputType.phone,
              ),
              AppGaps.h30,
              const CustomTextField(
                label: AppStrings.otp,
                keyboardType: TextInputType.number,
              ),
              AppGaps.h30,
              Row(
                children: [
                  Checkbox(
                    value: agreeToPrivacy,
                    onChanged: (bool? value) {
                      setState(() {
                        agreeToPrivacy = value!;
                      });
                    },
                    activeColor: AppColors.skyBlue,
                  ),
                  Expanded(
                    child: Text(
                      AppStrings.agreePrivacyPolicy,
                      style: AppTextStyles.normalMedium,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: agreeToDataProcessing,
                    onChanged: (bool? value) {
                      setState(() {
                        agreeToDataProcessing = value!;
                      });
                    },
                    activeColor: AppColors.skyBlue,
                  ),
                  Expanded(
                    child: Text(
                      AppStrings.agreePersonalData,
                      style: AppTextStyles.normalMedium,
                    ),
                  ),
                ],
              ),
              AppGaps.h30,
              ElevatedButton(
                onPressed: agreeToPrivacy && agreeToDataProcessing
                    ? () {
                        Get.to(() => const LocationSetupPage());
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    AppSizes.w327,
                    AppSizes.h48,
                  ),
                  backgroundColor: AppColors.skyBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.r4),
                  ),
                ),
                child: Text(
                  AppStrings.signMeUp,
                  style: AppTextStyles.normalMedium.copyWith(
                    color: AppColors.white,
                    letterSpacing: 0.16,
                  ),
                ),
              ),
              AppGaps.h30,
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.to(() => const LoginPage());
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: AppStrings.alreadyHaveAccount,
                          style: AppTextStyles.smallRegular.copyWith(
                            letterSpacing: -0.12,
                          ),
                        ),
                        TextSpan(
                          text: AppStrings.logIn,
                          style: AppTextStyles.smallMedium.copyWith(
                            color: AppColors.skyBlue,
                            decoration: TextDecoration.underline,
                            letterSpacing: -0.12,
                          ),
                        ),
                      ],
                    ),
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
