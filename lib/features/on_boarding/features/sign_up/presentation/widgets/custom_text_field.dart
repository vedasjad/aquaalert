import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.label,
    this.onTap,
    this.keyboardType,
    this.prefixText,
    super.key,
  });

  final String label;
  final String? prefixText;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: AppTextStyles.normalRegular.copyWith(
          color: AppColors.greyNeutral,
        ),
        floatingLabelStyle: AppTextStyles.normalRegular.copyWith(
          color: AppColors.skyBlue,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyNeutral,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.skyBlue,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyNeutral,
          ),
        ),
      ),
      keyboardType: keyboardType,
      onTap: onTap,
    );
  }
}
