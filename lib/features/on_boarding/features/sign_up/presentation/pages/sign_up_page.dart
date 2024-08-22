import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/features/on_boarding/features/login/presentation/pages/login_page.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fill_otp_page/fill_otp_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(
            AppSizes.v20,
            AppSizes.v20,
            AppSizes.v20,
            0,
          ),
          height: AppSizes.getScreenHeight() - kToolbarHeight,
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
                    AppImages.aquaAlertLogo,
                    height: AppSizes.w75,
                    width: AppSizes.w75,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              const Spacer(),
              const CustomTextField(
                label: AppStrings.name,
              ),
              AppGaps.h30,
              const CustomTextField(
                label: AppStrings.phoneNumber,
                prefixText: '+91 ',
                keyboardType: TextInputType.phone,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const FillOTPPage());
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    AppSizes.w327,
                    AppSizes.h48,
                  ),
                  backgroundColor: AppColors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.r4),
                  ),
                ),
                child: Text(
                  AppStrings.getOTP,
                  style: AppTextStyles.normalMedium.copyWith(
                    color: AppColors.white,
                    letterSpacing: 0.16,
                  ),
                ),
              ),
              TextButton(
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
                          color: AppColors.blue,
                          decoration: TextDecoration.underline,
                          letterSpacing: -0.12,
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
