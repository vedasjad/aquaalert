part of 'app_resources.dart';

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
  static const todayWaterUsage = "Today's water usage";
  static const overHalfway = "You're over halfway through your daily limit.";
  static const currentWaterFlow = "Current water flow";
  static const lPerMin = "L/min";
  static const waterRunning = "Water Running";
  static const litres = "Litres";
  static const home = "Home";
  static const myUsage = "My Usage";
  static const hydra = "Hydra";
  static const appliances = "Appliances";
  static const profile = "Profile";
  static const bathroom = "Bathroom";
  static const laundry = "Laundry";
  static const garage = "Garage";
  static const monthlyProgress = "Monthly progress";
  static String monthlyProgressStatement(int percentage) {
    return "On average, this month you used $percentage% less water than previous month";
  }

  static const thisMonth = "This month";
  static const previousMonth = "Previous month";
  static const ltrsPerDay = "Ltrs/day";
  static const goalStreak = "Goal streak";
  static daysInARow(int days) => "$days days in a row";
  static const searchByName = "Search By Name";
  static const filterBy = "Filter by";
  static const amountLeaked = "Amount leaked";
  static const timeOfLeakage = "Time of leakage";
  static const placeOfLeakage = "Place of leakage";
  static const reasonForLeakage = "Reason for leakage";
  static const myAccount = "My Account";
  static const myAccountDescription = "Make changes to your account";
  static const twoFactorAuth = "Two-Factor Authentication";
  static const twoFactorAuthDescription =
      "Further secure your account for safety";
  static const logout = "Logout";
  static const logoutDescription = "Further secure your account for safety";
  static const helpAndSupport = "Help & Support";
  static const aboutApp = "About App";
  static const more = "More";
  static const highWaterFlowTip =
      "Consider reducing your flow rate to save water.";
  static const running = "Running";
  static const totalConsumption = 'Total consumption';
}
