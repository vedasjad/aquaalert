import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

import '../../../../../../app/configs/size_config.dart';
import '../../../../../../core/resources/resources.dart';
import '../../profile_settings_tile/widgets/profile_settings_tile.dart';

class ProfileMainSettings extends StatelessWidget {
  const ProfileMainSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.width_14,
      ),
      child: Column(
        children: [
          ProfileSettingTile(
            attributes: ProfileSettingsTileAttributes(
              title: AppStrings.myAccount,
              subTitle: AppStrings.myAccountDescription,
              iconPath: AppIcons.person,
              hasWarning: true,
            ),
          ),
          ProfileSettingTile(
            attributes: ProfileSettingsTileAttributes(
              title: AppStrings.twoFactorAuth,
              subTitle: AppStrings.twoFactorAuthDescription,
              iconPath: AppIcons.authentication,
            ),
          ),
          ProfileSettingTile(
            attributes: ProfileSettingsTileAttributes(
              title: AppStrings.logout,
              subTitle: AppStrings.logoutDescription,
              iconPath: AppIcons.logout,
            ),
          ),
        ],
      ),
    );
  }
}
