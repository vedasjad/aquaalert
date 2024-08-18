enum ChartDataFrequency {
  hourly,
  daily,
  weekly,
  monthly,
}

extension ChartDataFrequencyExtension on ChartDataFrequency {
  String toName() {
    switch (this) {
      case ChartDataFrequency.hourly:
        return 'Hourly';
      case ChartDataFrequency.daily:
        return 'Daily';
      case ChartDataFrequency.weekly:
        return 'Weekly';
      case ChartDataFrequency.monthly:
        return 'Monthly';
      default:
        return '';
    }
  }
}
