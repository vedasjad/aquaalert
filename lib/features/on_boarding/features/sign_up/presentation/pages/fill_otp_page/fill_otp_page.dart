import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/pages/location_setup_page/location_setup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../../../../core/resources/resources.dart';

class FillOTPPage extends StatefulWidget {
  const FillOTPPage({super.key});

  @override
  State<FillOTPPage> createState() => _FillOTPPageState();
}

class _FillOTPPageState extends State<FillOTPPage> {
  bool agreeToPrivacy = false;
  bool agreeToDataProcessing = false;
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
            kToolbarHeight -
            kBottomNavigationBarHeight / 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: AppSizes.getScreenWidth(),
              padding: EdgeInsets.all(AppSizes.v20),
              color: AppColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Check your SMS!",
                    style: AppTextStyles.extraLargeBold.copyWith(
                      height: 0.07,
                      letterSpacing: -0.20,
                    ),
                  ),
                  AppGaps.h20,
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text.rich(
                      TextSpan(
                        text: "We have sent six digit OTP to ",
                        style: AppTextStyles.normalRegular.copyWith(
                          height: 1.5,
                          letterSpacing: 0.14,
                        ),
                        children: [
                          TextSpan(
                            text: "+91XXXXXXXX",
                            style: AppTextStyles.normalBold.copyWith(
                              height: 1.5,
                              letterSpacing: 0.14,
                            ),
                          ),
                          const TextSpan(
                            text:
                                ". Please remember to check your sms,\n\nPlease enter the verification code below to continue with your account.",
                          ),
                        ],
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
                padding: EdgeInsets.all(AppSizes.v20),
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Enter verification code",
                          style: AppTextStyles.normalBold.copyWith(
                            height: 1.5,
                            letterSpacing: 0.14,
                          ),
                        ),
                        Text(
                          "*",
                          style: AppTextStyles.normalBold.copyWith(
                            height: 1.5,
                            letterSpacing: 0.14,
                            color: AppColors.red,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: AppSizes.v8),
                          alignment: Alignment.centerLeft,
                          child: OtpTextField(
                            borderColor: AppColors.greyNeutral,
                            disabledBorderColor: AppColors.greyNeutral,
                            enabledBorderColor: AppColors.greyNeutral,
                            focusedBorderColor: AppColors.blue,
                            borderWidth: 2,
                            fieldHeight: AppSizes.v40,
                            fieldWidth: AppSizes.v40,
                            showFieldAsBox: true,
                            autoFocus: true,
                            alignment: Alignment.center,
                            onCodeChanged: (String code) {},
                            onSubmit: (String verificationCode) {
                              if (agreeToPrivacy && agreeToDataProcessing) {
                                Get.to(const LocationSetupPage());
                              }
                            }, // end onSubmit
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Didn't receive the SMS?",
                      style: AppTextStyles.smallRegular.copyWith(
                        height: 1.5,
                        letterSpacing: 0.14,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Checkbox(
                          value: agreeToPrivacy,
                          onChanged: (bool? value) {
                            setState(() {
                              agreeToPrivacy = value!;
                            });
                          },
                          activeColor: AppColors.blue,
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
                          activeColor: AppColors.blue,
                        ),
                        Expanded(
                          child: Text(
                            AppStrings.agreePersonalData,
                            style: AppTextStyles.normalMedium,
                          ),
                        ),
                      ],
                    ),
                    AppGaps.h20,
                    ElevatedButton(
                      onPressed: agreeToPrivacy && agreeToDataProcessing
                          ? () {
                              Get.to(const LocationSetupPage());
                            }
                          : null,
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
                          AppStrings.submit,
                          style: AppTextStyles.normalMedium.copyWith(
                            letterSpacing: 0.16,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                    AppGaps.h30,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
