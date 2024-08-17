import 'package:flutter/material.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/resources.dart';

class NotificationsIconWidget extends StatelessWidget {
  const NotificationsIconWidget({
    required this.onTap,
    super.key,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(
              SizeConfig.width_8,
            ),
            height: SizeConfig.width_38,
            width: SizeConfig.width_38,
            child: Image.asset(
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
      ),
    );
  }
}
