import 'package:aquaalert/app/configs/size_config.dart';
import 'package:aquaalert/core/resources/app_colors.dart';
import 'package:aquaalert/core/resources/app_strings.dart';
import 'package:aquaalert/core/resources/app_text_styles.dart';
import 'package:aquaalert/features/history/presentation/controllers/history_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home/presentation/widgets/leakage_notifier_widget.dart';
import '../../../stage/presentation/widgets/notification_icon_widget.dart';
import '../widgets/filter_widget.dart';
import '../widgets/history_search_bar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HistoryController controller = Get.find();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          AppStrings.history,
          style: AppTextStyles.lexendExtraLargeBold.copyWith(
            color: AppColors.navyBlue,
          ),
        ),
        actions: const [
          NotificationsIconWidget(),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.width_16,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HistorySearchBar(controller: controller),
              const FilterWidget(),
              ...List.generate(controller.leakages.length, (index) {
                return LeakageNotifierWidget(
                  leakage: controller.leakages[index],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class LeakageDialogInfoField extends StatelessWidget {
  const LeakageDialogInfoField({
    required this.value,
    required this.label,
    super.key,
  });
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.width_6,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyles.lexendNormalSemiBold,
          ),
          Container(
            width: SizeConfig.getScreenWidth() / 1.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                SizeConfig.radius_8,
              ),
              border: Border.all(
                color: AppColors.offWhite,
              ),
            ),
            margin: EdgeInsets.only(
              top: SizeConfig.width_6,
            ),
            padding: EdgeInsets.all(SizeConfig.width_8),
            child: Text(
              value,
              style: AppTextStyles.lexendNormalRegular,
            ),
          )
        ],
      ),
    );
  }
}
