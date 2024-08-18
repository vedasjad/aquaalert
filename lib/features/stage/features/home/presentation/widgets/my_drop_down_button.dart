import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/models/drop_down/drop_down_option_attributes.dart';

class MyDropDownButton extends StatelessWidget {
  const MyDropDownButton({
    required this.options,
    required this.onTap,
    super.key,
  });

  final List<DropDownOptionAttributes> options;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showOptionBottomSheet();
      },
      child: Container(
        margin: EdgeInsets.only(
          right: AppSizes.width_8,
        ),
        child: Row(
          children: [
            Text(
              options
                  .firstWhere(
                    (e) => e.isSelected == true,
                  )
                  .title,
              style: AppTextStyles.normalSemiBold.copyWith(
                color: AppColors.greyDavy,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.greyDavy,
              size: AppSizes.fontSize_26,
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showOptionBottomSheet() {
    return Get.bottomSheet(
      BottomSheet(
        backgroundColor: AppColors.white,
        showDragHandle: true,
        onClosing: () {},
        dragHandleColor: AppColors.blackMatte,
        dragHandleSize: Size(
          AppSizes.w50,
          AppSizes.w4,
        ),
        constraints: BoxConstraints(
          maxHeight: options.length * AppSizes.w102,
          minHeight: AppSizes.width_100,
          maxWidth: Get.width,
          minWidth: Get.width,
        ),
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(options.length, (index) {
              final option = options[index];
              final isSelected = option.isSelected == true;
              return GestureDetector(
                onTap: () {
                  onTap(index);
                  Get.back();
                },
                child: Container(
                  color: isSelected == true
                      ? AppColors.blueLight
                      : Colors.transparent,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.w20,
                    vertical:
                        isSelected == true ? AppSizes.w20 : AppSizes.width_12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        option.title,
                        style: AppTextStyles.largeMedium,
                      ),
                      if (isSelected == true)
                        Icon(
                          Icons.check,
                          color: AppColors.blue,
                          size: AppSizes.width_30,
                        )
                    ],
                  ),
                ),
              );
            }),
          );
        },
      ),
      backgroundColor: AppColors.white,
      useRootNavigator: true,
    );
  }
}
