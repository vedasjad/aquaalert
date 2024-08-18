import 'package:aquaalert/features/stage/features/appliances/presentation/widgets/appliance_tile.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/resources/app_resources.dart';
import '../../../../../../../core/resources/resources.dart';
import '../../../domain/models/appliance_info.dart';

class AppliancesIndoorTab extends StatelessWidget {
  const AppliancesIndoorTab({
    required this.appliancesInfo,
    super.key,
  });
  final List<ApplianceAttributes> appliancesInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        AppSizes.width_12,
      ),
      color: AppColors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: AppColors.blue,
                      size: AppSizes.w20,
                    ),
                    Text(
                      AppStrings.add,
                      style: AppTextStyles.largeMedium.copyWith(
                        color: AppColors.blue,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    AppIcons.rowsVertical,
                    height: AppSizes.w24,
                    width: AppSizes.w24,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: AppSizes.width_8,
                  ),
                  Image.asset(
                    AppIcons.grid,
                    height: AppSizes.w24,
                    width: AppSizes.w24,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ],
          ),
          ...List.generate(appliancesInfo.length, (index) {
            final appliance = appliancesInfo[index];
            return ApplianceTile(
              appliance: appliance,
            );
          }),
        ],
      ),
    );
  }
}
