import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../app/configs/size_config.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_text_styles.dart';
import '../../../../core/resources/resources.dart';
import '../../../../core/utils/date_time_helpers.dart';
import '../controllers/stage_controller.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class StagePage extends StatelessWidget {
  const StagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final StageController controller = Get.find();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: buildAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: CustomBottomNavigationBar(
        controller: controller,
      ),
      body: Obx(() {
        return controller.screens[controller.selectedBNBIndex.value];
      }),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.white,
      leadingWidth: SizeConfig.width_34 + SizeConfig.width_4 * 4,
      leading: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.width_8,
          top: SizeConfig.width_4,
        ),
        child: Image.asset(
          AppImages.profileImage,
          height: SizeConfig.width_34,
          width: SizeConfig.width_34,
          fit: BoxFit.contain,
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello, Anubha!",
            style: AppTextStyles.lexendExtraLargeBold.copyWith(
              color: AppColors.deepViolet,
            ),
          ),
          SizedBox(
            height: SizeConfig.width_2,
          ),
          Text(
            formatDateFromDateTime(DateTime.now()),
            style: AppTextStyles.lexendNormalRegular.copyWith(
              color: AppColors.deepViolet,
            ),
          ),
        ],
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(
            SizeConfig.width_6,
          ),
          height: SizeConfig.width_34,
          width: SizeConfig.width_34,
          decoration: const BoxDecoration(
            color: AppColors.black,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            AppIcons.bell,
            height: SizeConfig.width_16,
            width: SizeConfig.width_16,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: SizeConfig.width_4,
        ),
      ],
    );
  }
}
