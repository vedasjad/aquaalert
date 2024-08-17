import 'package:aquaalert/core/resources/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  final TextEditingController searchFieldController = TextEditingController();

  final List<String> leakagePlaces = [
    AppStrings.kitchen,
    AppStrings.bathroom,
    AppStrings.garage,
    AppStrings.laundry,
  ];
}
