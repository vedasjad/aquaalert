import 'package:aquaalert/core/enums_with_extensions/appliance_type.dart';
import 'package:aquaalert/core/models/tabs/my_tab.dart';
import 'package:get/get.dart';

import '../../../../../../../core/models/appliances/appliance.dart';
import '../../../../../../../core/resources/app_resources.dart';

class AppliancesSetupPageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // late Rx<TabController> tabController;

  final Rx<int> currentTabIndex = 0.obs;

  final List<MyTab> tabsTitle = [
    MyTab(title: AppStrings.indoor),
    MyTab(title: AppStrings.outdoor)
  ];

  final Set<Appliance> indoorAppliances = {};
  final Set<Appliance> outdoorAppliances = {};
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

    for (var mapEntry in AppMaps.applianceTypeWithAsset.entries.take(6)) {
      indoorAppliances.add(
        Appliance(
          name: mapEntry.key.toName(),
          iconPath: mapEntry.value,
          isIndoor: true,
          applianceType: mapEntry.key,
        ),
      );
    }
    for (var mapEntry
        in AppMaps.applianceTypeWithAsset.entries.toList().sublist(7)) {
      outdoorAppliances.add(
        Appliance(
          name: mapEntry.key.toName(),
          iconPath: mapEntry.value,
          isIndoor: false,
          applianceType: mapEntry.key,
        ),
      );
    }
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
