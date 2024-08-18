part of 'app_resources.dart';

/// A utility class that provides mappings for appliance types to their
/// respective asset locations.
///
/// This class contains a static constant map that associates each [ApplianceType]
/// with a corresponding asset location defined in [AppIcons]. The asset locations
/// are used to retrieve icons or images representing different types of appliances
/// within the application.
class AppMaps {
  /// A map that contains the association between [ApplianceType]s and their
  /// respective asset locations.
  ///
  /// Each entry in the map pairs an [ApplianceType] with a string representing
  /// the asset location (typically an image or icon) from [AppIcons]. This mapping
  /// helps in accessing and displaying the appropriate icons for each type of appliance
  /// in the application.
  ///
  /// For example:
  /// - [ApplianceType.tap] maps to [AppIcons.tap]
  /// - [ApplianceType.washingMachine] maps to [AppIcons.washingMachine]
  /// - [ApplianceType.poolAutoFill] maps to [AppIcons.poolAutoFill]
  static const Map<ApplianceType, String> applianceTypeWithAsset = {
    ApplianceType.tap: AppIcons.tap,
    ApplianceType.washingMachine: AppIcons.washingMachine,
    ApplianceType.bathtub: AppIcons.bathtub,
    ApplianceType.shower: AppIcons.shower,
    ApplianceType.dishwasher: AppIcons.dishWasher,
    ApplianceType.rOSystem: AppIcons.rOSystem,
    ApplianceType.sprinklers: AppIcons.sprinklers,
    ApplianceType.hoseIrrigation: AppIcons.hoseIrrigation,
    ApplianceType.dripIrrigation: AppIcons.dripIrrigation,
    ApplianceType.soakerHose: AppIcons.soakerHose,
    ApplianceType.irrigationControllerWifi: AppIcons.irrigationControllerWifi,
    ApplianceType.irrigationControllerNonWifi:
        AppIcons.irrigationControllerNonWifi,
    ApplianceType.poolManualFill: AppIcons.poolAutoFill,
    ApplianceType.poolAutoFill: AppIcons.poolAutoFill,
  };
}
