import 'package:aquaalert/features/stage/features/appliances/features/single_appliance/presentation/bindings/single_appliance_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/resources/app_resources.dart';
import '../../../../../../core/resources/resources.dart';
import '../../../../../../core/utils/date_time_helpers.dart';
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
              height: AppSizes.width_70,
              margin: EdgeInsets.only(
                top: AppSizes.width_12,
              ),
              decoration: BoxDecoration(
                color: AppColors.offWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    AppSizes.radius_10,
                  ),
                  bottomLeft: Radius.circular(
                    AppSizes.radius_10,
                  ),
                ),
              ),
              alignment: Alignment.center,
              child: Image.asset(
                appliance.iconPath,
                width: AppSizes.width_42,
                height: AppSizes.width_32,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: AppSizes.width_70,
              margin: EdgeInsets.only(
                top: AppSizes.width_12,
                left: AppSizes.width_2,
              ),
              padding: EdgeInsets.all(
                AppSizes.width_12,
              ),
              decoration: BoxDecoration(
                color: AppColors.offWhite,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    AppSizes.radius_10,
                  ),
                  bottomRight: Radius.circular(
                    AppSizes.radius_10,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    appliance.name,
                    style: AppTextStyles.largeMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: AppSizes.width_6,
                            width: AppSizes.width_6,
                            margin: EdgeInsets.only(
                              right: AppSizes.width_4,
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
                            style: AppTextStyles.smallRegular.copyWith(
                              color: AppColors.blackMatte,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppIcons.link,
                            height: AppSizes.width_16,
                            width: AppSizes.width_16,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: AppSizes.width_4,
                          ),
                          Text(
                            appliance.location,
                            style: AppTextStyles.smallRegular.copyWith(
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
