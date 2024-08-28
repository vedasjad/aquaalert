class ApplianceStatus {
  final bool isRunning;
  final DateTime? lastUsed;
  ApplianceStatus({
    required this.isRunning,
    this.lastUsed,
  });
}
