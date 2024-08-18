import 'package:flutter/material.dart';

import '../../../../core/resources/app_resources.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    required this.onTap,
    required this.iconPath,
    super.key,
  });
  final VoidCallback onTap;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(
              AppSizes.width_8,
            ),
            height: AppSizes.width_38,
            width: AppSizes.width_38,
            child: Image.asset(
              iconPath,
              height: AppSizes.width_16,
              width: AppSizes.width_16,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: AppSizes.width_8,
          ),
        ],
      ),
    );
  }
}
