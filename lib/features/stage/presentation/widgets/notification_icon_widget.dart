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
              AppSizes.w8,
            ),
            height: AppSizes.w38,
            width: AppSizes.w38,
            child: Image.asset(
              iconPath,
              height: AppSizes.w16,
              width: AppSizes.w16,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: AppSizes.w8,
          ),
        ],
      ),
    );
  }
}
