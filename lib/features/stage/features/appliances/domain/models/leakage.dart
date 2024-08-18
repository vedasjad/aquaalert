class Leakage {
  final String location;
  final String appliance;
  final String reason;
  final DateTime dateTime;
  final int amountInLitres;

  Leakage({
    required this.dateTime,
    required this.amountInLitres,
    required this.appliance,
    required this.location,
    required this.reason,
  });
}
