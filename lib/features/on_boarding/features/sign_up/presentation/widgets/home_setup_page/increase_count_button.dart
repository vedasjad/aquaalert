import 'package:flutter/material.dart';

import '../../../../../../../core/resources/app_resources.dart';

class IncreaseCountButton extends StatelessWidget {
  const IncreaseCountButton({
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
            color: AppColors.blue,
            width: AppSizes.w2,
          ),
        ),
        child: Icon(
          Icons.add,
          size: AppSizes.w24,
          color: AppColors.blue,
        ),
      ),
      onPressed: onTap,
    );
  }
}
