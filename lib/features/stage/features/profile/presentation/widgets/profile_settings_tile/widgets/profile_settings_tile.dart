import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/resources/resources.dart';

part '../attributes/profile_settings_tile_attributes.dart';

class ProfileSettingTile extends StatelessWidget {
  const ProfileSettingTile({
    required this.attributes,
    super.key,
  });
  final ProfileSettingsTileAttributes attributes;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.width_8,
      ),
      child: ListTile(
        leading: Container(
          height: AppSizes.width_40,
          width: AppSizes.width_40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.offWhite,
          ),
          alignment: Alignment.center,
          child: Image.asset(
            attributes.iconPath,
            height: AppSizes.w20,
            width: AppSizes.w20,
            fit: BoxFit.contain,
          ),
        ),
        title: Stack(
          children: [
            Text(
              attributes.title,
              style: AppTextStyles.normalSemiBold,
            ),
            if (attributes.hasWarning == true)
              Positioned(
                right: 0,
                top: AppSizes.w4,
                child: Image.asset(
                  AppIcons.warning,
                  height: AppSizes.width_14,
                  width: AppSizes.width_14,
                  fit: BoxFit.contain,
                ),
              ),
          ],
        ),
        subtitle: attributes.subTitle != null
            ? Text(
                attributes.subTitle!,
                style: AppTextStyles.smallRegular.copyWith(
                  color: AppColors.coolGrey,
                ),
              )
            : null,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.coolGrey,
        ),
      ),
    );
  }
}
