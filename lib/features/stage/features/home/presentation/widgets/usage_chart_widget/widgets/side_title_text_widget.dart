import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

class SideTitleTextWidget extends StatelessWidget {
  const SideTitleTextWidget(
    this.title, {
    super.key,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.smallSemiBold.copyWith(
        color: AppColors.blueMuted,
      ),
    );
  }
}
