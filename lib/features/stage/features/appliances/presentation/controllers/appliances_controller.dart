import 'package:aquaalert/core/enums_with_extensions/appliance_type.dart';
import 'package:aquaalert/core/models/tabs/my_tab.dart';
import 'package:aquaalert/features/stage/features/appliances/presentation/navigation_handler/appliances_navigation_handler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/entities/appliances/appliance.dart';
import '../../../../../../core/resources/app_resources.dart';
import '../../domain/entities/appliance_status.dart';
import '../../domain/entities/leakage.dart';
import '../../domain/entities/operational_appliance.dart';

class AppliancesController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final AppliancesNavigationHandler _navigationHandler;
  AppliancesController({
    required AppliancesNavigationHandler navigationHandler,
  }) : _navigationHandler = navigationHandler;
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
        id: "indoor1",
        ipAddress: "192.168.0.1",
      ),
      OperationalAppliance(
        location: "Courtyard",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(const Duration(hours: 5)),
        ),
        appliance: _indoorAppliances[1],
        id: "indoor2",
        ipAddress: "192.168.0.2",
      ),
      OperationalAppliance(
        location: "Bathroom 1",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(const Duration(hours: 2)),
        ),
        appliance: _indoorAppliances[2],
        id: "indoor3",
        ipAddress: "192.168.0.3",
      ),
      OperationalAppliance(
        location: "Bathroom 2",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(const Duration(hours: 1)),
        ),
        appliance: _indoorAppliances[3],
        id: "indoor4",
        ipAddress: "192.168.0.4",
      ),
    ];

    outdoorOperationalAppliances = [
      OperationalAppliance(
        location: "Garden",
        status: ApplianceStatus(
          isRunning: true,
        ),
        appliance: _outdoorAppliances[0],
        id: "outdoor1",
        ipAddress: "192.168.0.5",
      ),
      OperationalAppliance(
        location: "Field",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(const Duration(hours: 5)),
        ),
        appliance: _outdoorAppliances[1],
        id: "outdoor2",
        ipAddress: "192.168.0.6",
      ),
      OperationalAppliance(
        location: "Field",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(const Duration(hours: 2)),
        ),
        appliance: _outdoorAppliances[2],
        id: "outdoor3",
        ipAddress: "192.168.0.7",
      ),
      OperationalAppliance(
        location: "Field",
        status: ApplianceStatus(
          isRunning: false,
          lastUsed: DateTime.now().subtract(const Duration(hours: 1)),
        ),
        appliance: _outdoorAppliances[3],
        id: "outdoor4",
        ipAddress: "192.168.0.8",
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

  void addAppliance() async {
    final result = await _navigationHandler.goToAddAppliance();
    result.fold(
      (failure) {
        Get.snackbar('Failed', 'Appliance could not be connected');
      },
      (appliance) {
        currentTabIndex.value == 0
            ? indoorOperationalAppliances.insert(
                0,
                appliance.copyWith(
                  isNewlyAdded: true,
                ),
              )
            : outdoorOperationalAppliances.insert(
                0,
                appliance.copyWith(
                  isNewlyAdded: true,
                ),
              );
        Get.snackbar(
          'Success',
          '${appliance.appliance.name} connected successfully',
          backgroundColor: Colors.green,
        );
        // update();
      },
    );
    update();
  }
}
