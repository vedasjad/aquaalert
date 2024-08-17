class AppStrings {
  static const leakageDetected = "Leakage detected";
  static const kitchen = "Kitchen";
  static const daily = "Daily";
  static const day = "Day";
  static const week = "Week";
  static const month = "Month";
  static const weekly = "Weekly";
  static const monthly = "Monthly";
  static const bimonthly = "Bimonthly";
  static const waterConsumption = "Water Consumption";
  static const ofDailyAverage = "of Daily Average";
  static const waterStatus = "Water Status";
  static const litresPerMin = "litres/min";
  static const waterRunning = "Water Running";
  static const litres = "Litres";
  static const home = "Home";
  static const activities = "Activities";
  static const nemo = "Nemo";
  static const history = "History";
  static const profile = "Profile";
  static const bathroom = "Bathroom";
  static const laundry = "Laundry";
  static const garage = "Garage";
  static const monthlyProgress = "Monthly progress";
  static String monthlyProgressStatement(int percentage) {
    return "On average, this month you used $percentage% less\nwater than previous month";
  }

  static const thisMonth = "This month";
  static const previousMonth = "Previous month";
  static const ltrsPerDay = "Ltrs/day";
  static const goalStreak = "Goal streak";
  static daysInARow(int days) => "$days days in a row";
  static const searchByName = "Search By Name";
  static const filterBy = "Filter by";
}
