import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_header.dart';
import '../widgets/profile_main_settings/widgets/profile_main_settings.dart';
import '../widgets/profile_more_settings/widgets/profile_more_settings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          AppStrings.profile,
          style: AppTextStyles.lexendExtraLargeSemiBold.copyWith(
            color: AppColors.navyBlue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          SizeConfig.width_14,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(),
            ProfileMainSettings(),
            ProfileMoreSettings()
          ],
        ),
      ),
    );
  }
}
