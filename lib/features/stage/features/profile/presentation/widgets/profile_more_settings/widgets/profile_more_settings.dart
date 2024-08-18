import 'package:aquaalert/core/resources/app_resources.dart';

import 'package:aquaalert/core/resources/resources.dart';
import 'package:flutter/material.dart';

import '../../profile_settings_tile/widgets/profile_settings_tile.dart';

class ProfileMoreSettings extends StatelessWidget {
  const ProfileMoreSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.more,
          style: AppTextStyles.largeMedium.copyWith(
            color: AppColors.black,
          ),
        ),
        SizedBox(
          height: AppSizes.width_8,
        ),
        Column(
          children: [
            ProfileSettingTile(
              attributes: ProfileSettingsTileAttributes(
                title: AppStrings.helpAndSupport,
                iconPath: AppIcons.bellRounded,
              ),
            ),
            ProfileSettingTile(
              attributes: ProfileSettingsTileAttributes(
                title: AppStrings.aboutApp,
                iconPath: AppIcons.heartRounded,
              ),
            ),
          ],
        )
      ],
    );
  }
}
