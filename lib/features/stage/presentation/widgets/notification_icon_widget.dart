import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/resources.dart';

class NotificationsIconWidget extends StatelessWidget {
  const NotificationsIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(
            SizeConfig.width_8,
          ),
          height: SizeConfig.width_38,
          width: SizeConfig.width_38,
          decoration: const BoxDecoration(
            color: AppColors.black,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            AppIcons.bell,
            height: SizeConfig.width_16,
            width: SizeConfig.width_16,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: SizeConfig.width_8,
        ),
      ],
    );
  }
}
