import 'package:aquaalert/core/models/tabs/my_tab.dart';
import 'package:get/get.dart';

import '../../../../../../core/resources/app_resources.dart';
import '../../../../domain/models/leakage.dart';

class SingleApplianceController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // late Rx<TabController> tabController;

  final Rx<int> currentTabIndex = 0.obs;

  final List<MyTab> tabsTitle = [
    MyTab(title: AppStrings.usageStats),
    MyTab(title: AppStrings.alerts)
  ];
  @override
  void onInit() {
    // tabController.value = TabController(
    //   length: tabsTitle.length,
    //   vsync: this,
    // );
    // tabController.value.addListener(() {
    //   update();
    // });
    tabsTitle[currentTabIndex.value] =
        tabsTitle[currentTabIndex.value].copyWith(isSelected: true);
    super.onInit();
  }

  @override
  void onClose() {
    // tabController.value.dispose();
    super.onClose();
  }

  void updateCurrentTabIndex(int index) {
    currentTabIndex.value = index;
    update();
  }

  final List<Leakage> leakages = [
    Leakage(
      dateTime: DateTime.now(),
      amountInLitres: 21,
      appliance: "Washing Machine",
      location: AppStrings.bathroom,
      reason: "Hole in drainage pipe",
    ),
    Leakage(
      dateTime: DateTime.now(),
      amountInLitres: 21,
      appliance: "Washing Machine",
      location: AppStrings.kitchen,
      reason: "Hole in drainage pipe",
    ),
    Leakage(
      dateTime: DateTime.now(),
      amountInLitres: 21,
      appliance: "Washing Machine",
      location: AppStrings.garage,
      reason: "Hole in drainage pipe",
    ),
    Leakage(
      dateTime: DateTime.now(),
      amountInLitres: 21,
      appliance: "Washing Machine",
      location: AppStrings.laundry,
      reason: "Hole in drainage pipe",
    ),
  ];
}
