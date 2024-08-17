class Leakage {
  final String location;
  final String equipment;
  final String reason;
  final DateTime dateTime;
  final int amountInLitres;

  Leakage({
    required this.dateTime,
    required this.amountInLitres,
    required this.equipment,
    required this.location,
    required this.reason,
  });
}
