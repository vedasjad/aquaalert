import 'package:aquaalert/features/appliances/presentation/widgets/appliance_tile.dart';
import 'package:flutter/material.dart';

import '../../../../../app/configs/size_config.dart';
import '../../../../../core/resources/app_resources.dart';
import '../../../../../core/resources/resources.dart';
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
        SizeConfig.width_12,
      ),
      color: AppColors.whitePure,
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
                      color: AppColors.skyBlue,
                      size: SizeConfig.width_20,
                    ),
                    Text(
                      AppStrings.add,
                      style: AppTextStyles.dmSansLargeMedium.copyWith(
                        color: AppColors.skyBlue,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    AppIcons.rowsVertical,
                    height: SizeConfig.width_24,
                    width: SizeConfig.width_24,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: SizeConfig.width_8,
                  ),
                  Image.asset(
                    AppIcons.grid,
                    height: SizeConfig.width_24,
                    width: SizeConfig.width_24,
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
