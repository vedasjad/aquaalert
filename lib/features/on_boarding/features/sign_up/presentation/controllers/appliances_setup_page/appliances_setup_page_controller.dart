import 'package:aquaalert/core/models/tabs/my_tab.dart';
import 'package:get/get.dart';

import '../../../../../../../core/resources/app_resources.dart';

class AppliancesSetupPageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // late Rx<TabController> tabController;

  final Rx<int> currentTabIndex = 0.obs;

  final List<MyTab> tabsTitle = [
    MyTab(title: AppStrings.indoor),
    MyTab(title: AppStrings.outdoor)
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
}
