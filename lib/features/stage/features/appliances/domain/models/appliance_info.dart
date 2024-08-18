class ApplianceAttributes {
  final String iconPath;
  final String name;
  final ApplianceStatus status;
  final String location;
  ApplianceAttributes({
    required this.iconPath,
    required this.location,
    required this.status,
    required this.name,
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
