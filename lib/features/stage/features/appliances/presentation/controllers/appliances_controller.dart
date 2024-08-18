import 'package:aquaalert/core/enums_with_extensions/appliance_type.dart';
import 'package:aquaalert/core/models/tabs/my_tab.dart';
import 'package:get/get.dart';

import '../../../../../../core/models/appliances/appliance.dart';
import '../../../../../../core/resources/app_resources.dart';
import '../../domain/models/appliance_info.dart';
import '../../domain/models/leakage.dart';

class AppliancesController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // late Rx<TabController> tabController;

  final Rx<int> currentTabIndex = 0.obs;

  final List<MyTab> tabsTitle = [
    MyTab(title: AppStrings.indoor),
    MyTab(title: AppStrings.outdoor)
  ];

  final List<Appliance> _indoorAppliances = [];
  final List<Appliance> _outdoorAppliances = [];
  List<OperationalAppliance> indoorOperationalAppliances = [];
  List<OperationalAppliance> outdoorOperationalAppliances = [];

  @override
  void onInit() {
    // tabController.value = TabController(
    //   length: tabsTitle.length,
    //   vsync: this,
    // );
    // tabController.value.addListener(() {
    //   update();
    // });

    for (var mapEntry in AppMaps.applianceTypeWithAsset.entries.take(6)) {
      _indoorAppliances.add(
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
      _outdoorAppliances.add(
        Appliance(
          name: mapEntry.key.toName(),
          iconPath: mapEntry.value,
          isIndoor: false,
          applianceType: mapEntry.key,
        ),
      );
    }

    indoorOperationalAppliances = [
      OperationalAppliance(
        location: "Kitchen",
        status: ApplianceStatus(
          isRunning: true,
        ),
        appliance: _indoorAppliances[0],
      ),
      OperationalAppliance(
        location: "Courtyard",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(
            const Duration(
              hours: 5,
            ),
          ),
        ),
        appliance: _indoorAppliances[1],
      ),
      OperationalAppliance(
        location: "Bathroom 1",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(
            const Duration(
              hours: 2,
            ),
          ),
        ),
        appliance: _indoorAppliances[2],
      ),
      OperationalAppliance(
        location: "Bathroom 2",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(
            const Duration(
              hours: 1,
            ),
          ),
        ),
        appliance: _indoorAppliances[3],
      ),
    ];

    outdoorOperationalAppliances = [
      OperationalAppliance(
        location: "Garden",
        status: ApplianceStatus(
          isRunning: true,
        ),
        appliance: _outdoorAppliances[0],
      ),
      OperationalAppliance(
        location: "Field",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(
            const Duration(
              hours: 5,
            ),
          ),
        ),
        appliance: _outdoorAppliances[1],
      ),
      OperationalAppliance(
        location: "Field",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(
            const Duration(
              hours: 2,
            ),
          ),
        ),
        appliance: _outdoorAppliances[2],
      ),
      OperationalAppliance(
        location: "Field",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(
            const Duration(
              hours: 1,
            ),
          ),
        ),
        appliance: _outdoorAppliances[3],
      ),
    ];

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
