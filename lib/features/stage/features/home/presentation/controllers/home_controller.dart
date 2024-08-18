import 'dart:math';

import 'package:get/get.dart';

import '../../../../../../core/models/drop_down/drop_down_option_attributes.dart';

class HomeController extends GetxController {
  Rx<int> selectedOptionIndex = 0.obs;

  void updateSelectedOptionIndex(int index) {
    options[selectedOptionIndex.value] =
        options[selectedOptionIndex.value].copyWith(
      isSelected: false,
    );
    selectedOptionIndex.value = index;
    options[index] = options[index].copyWith(
      isSelected: true,
    );
    update();
  }

  List<DropDownOptionAttributes> options = [
    DropDownOptionAttributes(
      title: 'Hourly',
      isSelected: true,
    ),
    DropDownOptionAttributes(
      title: 'Daily',
    ),
    DropDownOptionAttributes(
      title: 'Weekly',
    ),
    DropDownOptionAttributes(
      title: 'Monthly',
    ),
  ];

  final List<Point<double>> _hourlyData = _generateRandomPoints(
    24,
    0,
    8,
  );
  final List<Point<double>> _dailyData = _generateRandomPoints(
    30,
    0,
    8,
  );
  final List<Point<double>> _weeklyData = _generateRandomPoints(
    6,
    0,
    8,
  );
  final List<Point<double>> _monthlyData = _generateRandomPoints(
    6,
    0,
    4,
  );

  final List<Point<double>> _secondHourlyData = _generateRandomPoints(
    24,
    0,
    8,
  );
  final List<Point<double>> _secondDailyData = _generateRandomPoints(
    30,
    0,
    8,
  );
  final List<Point<double>> _secondWeeklyData = _generateRandomPoints(
    6,
    0,
    8,
  );
  final List<Point<double>> _secondMonthlyData = _generateRandomPoints(
    6,
    0,
    4,
  );

  List<Point> get chartData1 {
    switch (selectedOptionIndex.value) {
      case 0:
        return _hourlyData;
      case 1:
        return _dailyData;
      case 2:
        return _weeklyData;
      case 3:
        return _monthlyData;
      default:
        return [];
    }
  }

  List<Point> get chartData2 {
    switch (selectedOptionIndex.value) {
      case 0:
        return _secondHourlyData;
      case 1:
        return _secondDailyData;
      case 2:
        return _secondWeeklyData;
      case 3:
        return _secondMonthlyData;
      default:
        return [];
    }
  }

  static List<Point<double>> _generateRandomPoints(
      int count, double min, double max) {
    return List.generate(
      count,
      (index) => Point<double>(
          index.toDouble(), min + Random().nextDouble() * (max - min)),
    );
  }

  double get maxX => (chartData1.isNotEmpty || chartData2.isNotEmpty)
      ? [
          if (chartData1.isNotEmpty) chartData1.last.x.toDouble(),
          if (chartData2.isNotEmpty) chartData2.last.x.toDouble(),
        ].reduce((a, b) => a > b ? a : b)
      : 7;

  double get maxY => (chartData1.isNotEmpty || chartData2.isNotEmpty)
      ? [
          if (chartData1.isNotEmpty)
            chartData1
                .map((point) => point.y)
                .reduce((a, b) => a > b ? a : b)
                .toDouble(),
          if (chartData2.isNotEmpty)
            chartData2
                .map((point) => point.y)
                .reduce((a, b) => a > b ? a : b)
                .toDouble(),
        ].reduce((a, b) => a > b ? a : b)
      : 100;

  List<String> get xAxisLabelsHourly =>
      List.generate(24, (index) => "${index.toString()}:00 HR");
  List<String> get xAxisLabelsDaily =>
      List.generate(30, (index) => "Day ${index + 1}");
  List<String> get xAxisLabelsWeekly =>
      List.generate(30, (index) => "Week ${index + 1}");
  List<String> get xAxisLabelsMonthly =>
      List.generate(12, (index) => "Month ${index + 1}");

  List<String> get yAxisLabelsHourly => [
        "0L",
        "20L",
        "40L",
        "60L",
        "80L",
        "100L",
        "120L",
        "140L",
      ];
  List<String> get yAxisLabelsDaily => [
        "0L",
        "50L",
        "100L",
        "150L",
        "200L",
        "250L",
        "300L",
        "350L",
        "400L",
        "450L",
      ];
  List<String> get yAxisLabelsWeekly => [
        "0L",
        "100L",
        "200L",
        "300L",
        "400L",
        "500L",
        "600L",
        "700L",
        "800L",
        "900L",
      ];
  List<String> get yAxisLabelsMonthly => [
        "0L",
        "100L",
        "200L",
        "300L",
        "400L",
        "500L",
        "600L",
        "700L",
        "800L",
        "900L",
        "1000L",
        "1100L",
        "1200L",
      ];
}
