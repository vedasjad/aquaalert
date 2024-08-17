import 'package:aquaalert/core/resources/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../domain/models/leakage.dart';

class HistoryController extends GetxController {
  final TextEditingController searchFieldController = TextEditingController();

  final List<Leakage> leakages = [
    Leakage(
      dateTime: DateTime.now(),
      amountInLitres: 21,
      equipment: "Washing Machine",
      location: AppStrings.bathroom,
      reason: "Hole in drainage pipe",
    ),
    Leakage(
      dateTime: DateTime.now(),
      amountInLitres: 21,
      equipment: "Washing Machine",
      location: AppStrings.kitchen,
      reason: "Hole in drainage pipe",
    ),
    Leakage(
      dateTime: DateTime.now(),
      amountInLitres: 21,
      equipment: "Washing Machine",
      location: AppStrings.garage,
      reason: "Hole in drainage pipe",
    ),
    Leakage(
      dateTime: DateTime.now(),
      amountInLitres: 21,
      equipment: "Washing Machine",
      location: AppStrings.laundry,
      reason: "Hole in drainage pipe",
    ),
  ];
}
