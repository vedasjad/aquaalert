import 'package:aquaalert/core/resources/app_colors.dart';
import 'package:aquaalert/core/resources/app_text_styles.dart';
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
      style: AppTextStyles.dmSansSmallBold.copyWith(
        color: AppColors.darkGrey,
      ),
    );
  }
}
