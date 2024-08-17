import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

import '../../../../../../app/configs/size_config.dart';
import '../../../../../../core/resources/resources.dart';

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
      color: AppColors.whitePure,
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.width_8,
      ),
      child: ListTile(
        leading: Container(
          height: SizeConfig.width_40,
          width: SizeConfig.width_40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.offWhite,
          ),
          alignment: Alignment.center,
          child: Image.asset(
            attributes.iconPath,
            height: SizeConfig.width_20,
            width: SizeConfig.width_20,
            fit: BoxFit.contain,
          ),
        ),
        title: Stack(
          children: [
            Text(
              attributes.title,
              style: AppTextStyles.dmSansNormalSemiBold,
            ),
            if (attributes.hasWarning == true)
              Positioned(
                right: 0,
                top: SizeConfig.width_4,
                child: Image.asset(
                  AppIcons.warning,
                  height: SizeConfig.width_14,
                  width: SizeConfig.width_14,
                  fit: BoxFit.contain,
                ),
              ),
          ],
        ),
        subtitle: attributes.subTitle != null
            ? Text(
                attributes.subTitle!,
                style: AppTextStyles.dmSansSmallRegular.copyWith(
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
