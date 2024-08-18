import 'package:flutter/material.dart';

import '../../../../../../../core/resources/app_resources.dart';

class DecreaseCountButton extends StatelessWidget {
  const DecreaseCountButton({
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        height: AppSizes.v30,
        width: AppSizes.v30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.blackMatte,
            width: AppSizes.w2,
          ),
        ),
        child: Icon(
          Icons.remove,
          size: AppSizes.w24,
          color: AppColors.blackMatte,
        ),
      ),
      onPressed: onTap,
    );
  }
}
