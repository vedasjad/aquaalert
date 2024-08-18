import 'package:aquaalert/core/models/appliances/appliance.dart';

class OperationalAppliance {
  final ApplianceStatus status;
  final Appliance appliance;
  final String location;
  OperationalAppliance({
    required this.location,
    required this.status,
    required this.appliance,
  });
}

class ApplianceStatus {
  final bool isRunning;
  final DateTime? lastUsed;
  ApplianceStatus({
    required this.isRunning,
    this.lastUsed,
  });
}
