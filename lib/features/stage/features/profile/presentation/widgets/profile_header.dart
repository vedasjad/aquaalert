import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/resources/resources.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.coolGrey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,
          )
        ],
        color: AppColors.oxfordBlue,
        borderRadius: BorderRadius.circular(
          AppSizes.r4,
        ),
      ),
      padding: EdgeInsets.all(
        AppSizes.w16,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.white2,
                width: AppSizes.r2,
              ),
            ),
            child: Image.asset(
              AppIcons.person,
              height: AppSizes.w54,
              width: AppSizes.w54,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: AppSizes.w12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Anubha Sharma",
                style: AppTextStyles.extraLargeBold.copyWith(
                  color: AppColors.white2,
                ),
              ),
              Text(
                "@anubhaa",
                style: AppTextStyles.smallRegular.copyWith(
                  color: AppColors.white2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
