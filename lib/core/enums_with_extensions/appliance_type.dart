enum ApplianceType {
  tap,
  washingMachine,
  shower,
  rOSystem,
  dishwasher,
  bathtub,
  sprinklers,
  hoseIrrigation,
  dripIrrigation,
  soakerHose,
  irrigationControllerWifi,
  irrigationControllerNonWifi,
  poolManualFill,
  poolAutoFill,
}

extension ApplianceTypeExtension on ApplianceType {
  String toName() {
    switch (this) {
      case ApplianceType.tap:
        return 'Faucet';
      case ApplianceType.washingMachine:
        return 'Washing Machine';
      case ApplianceType.shower:
        return 'Shower';
      case ApplianceType.rOSystem:
        return 'RO System';
      case ApplianceType.dishwasher:
        return 'Dishwasher';
      case ApplianceType.bathtub:
        return 'Bathtub';
      case ApplianceType.sprinklers:
        return 'Sprinklers';
      case ApplianceType.hoseIrrigation:
        return 'Hose Irrigation';
      case ApplianceType.dripIrrigation:
        return 'Drip Irrigation';
      case ApplianceType.soakerHose:
        return 'Soaker Hose';
      case ApplianceType.irrigationControllerWifi:
        return 'Irrigation Controller (WiFi)';
      case ApplianceType.irrigationControllerNonWifi:
        return 'Irrigation Controller (Non-WiFi)';
      case ApplianceType.poolManualFill:
        return 'Pool (Manual Fill)';
      case ApplianceType.poolAutoFill:
        return 'Pool (Auto Fill)';
      default:
        return '';
    }
  }
}
