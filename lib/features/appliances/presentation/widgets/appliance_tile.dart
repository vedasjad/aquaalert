import 'package:aquaalert/features/appliances/features/single_appliance/presentation/bindings/single_appliance_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/app_resources.dart';
import '../../../../core/resources/resources.dart';
import '../../../../core/utils/date_time_helpers.dart';
import '../../domain/models/appliance_info.dart';
import '../../features/single_appliance/presentation/pages/single_appliance_page.dart';

class ApplianceTile extends StatelessWidget {
  const ApplianceTile({
    super.key,
    required this.appliance,
  });

  final ApplianceAttributes appliance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => SingleAppliancePage(
            attributes: appliance,
          ),
          binding: SingleApplianceBinding(),
        );
      },
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: SizeConfig.width_70,
              margin: EdgeInsets.only(
                top: SizeConfig.width_12,
              ),
              decoration: BoxDecoration(
                color: AppColors.offWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    SizeConfig.radius_10,
                  ),
                  bottomLeft: Radius.circular(
                    SizeConfig.radius_10,
                  ),
                ),
              ),
              alignment: Alignment.center,
              child: Image.asset(
                appliance.iconPath,
                width: SizeConfig.width_42,
                height: SizeConfig.width_32,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: SizeConfig.width_70,
              margin: EdgeInsets.only(
                top: SizeConfig.width_12,
                left: SizeConfig.width_2,
              ),
              padding: EdgeInsets.all(
                SizeConfig.width_12,
              ),
              decoration: BoxDecoration(
                color: AppColors.offWhite,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    SizeConfig.radius_10,
                  ),
                  bottomRight: Radius.circular(
                    SizeConfig.radius_10,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    appliance.name,
                    style: AppTextStyles.dmSansLargeMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: SizeConfig.width_6,
                            width: SizeConfig.width_6,
                            margin: EdgeInsets.only(
                              right: SizeConfig.width_4,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: appliance.status.isRunning
                                  ? AppColors.skyBlue
                                  : AppColors.coolGrey,
                            ),
                          ),
                          Text(
                            appliance.status.isRunning
                                ? "Running"
                                : "Last ran at ${formatTimeFromDateTime(
                                    appliance.status.lastUsed!,
                                  )}",
                            style: AppTextStyles.dmSansSmallRegular.copyWith(
                              color: AppColors.blackMatte,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppIcons.link,
                            height: SizeConfig.width_16,
                            width: SizeConfig.width_16,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: SizeConfig.width_4,
                          ),
                          Text(
                            appliance.location,
                            style: AppTextStyles.dmSansSmallRegular.copyWith(
                              color: AppColors.blackMatte,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
