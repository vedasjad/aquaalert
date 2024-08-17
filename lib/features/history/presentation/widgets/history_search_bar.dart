import 'package:flutter/material.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/app_text_styles.dart';
import '../../../../core/resources/resources.dart';
import '../controllers/history_controller.dart';

class HistorySearchBar extends StatelessWidget {
  const HistorySearchBar({
    super.key,
    required this.controller,
  });

  final HistoryController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.width_8,
      ),
      height: SizeConfig.height_34,
      child: TextFormField(
        controller: controller.searchFieldController,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.offWhite,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.offWhite,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.offWhite,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.black,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.red,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.red,
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.all(
              SizeConfig.width_8,
            ),
            child: Image.asset(
              AppIcons.search,
            ),
          ),
          hintText: AppStrings.searchByName,
          hintStyle: AppTextStyles.lexendNormalRegular,
          contentPadding: EdgeInsets.all(
            SizeConfig.width_4,
          ),
        ),
        style: AppTextStyles.lexendNormalRegular,
        cursorColor: AppColors.black,
      ),
    );
  }
}
