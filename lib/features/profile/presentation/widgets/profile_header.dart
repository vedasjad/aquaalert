import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/resources.dart';

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
          SizeConfig.radius_4,
        ),
      ),
      padding: EdgeInsets.all(
        SizeConfig.width_16,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.white,
                width: SizeConfig.radius_2,
              ),
            ),
            child: Image.asset(
              AppIcons.person,
              height: SizeConfig.width_54,
              width: SizeConfig.width_54,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: SizeConfig.width_12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Anubha Sharma",
                style: AppTextStyles.dmSansExtraLargeBold.copyWith(
                  color: AppColors.white,
                ),
              ),
              Text(
                "@anubhaa",
                style: AppTextStyles.dmSansSmallRegular.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
