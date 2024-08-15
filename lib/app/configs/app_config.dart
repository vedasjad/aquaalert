import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConfig {
  static const String appName = 'Aqua Alert';
  static const String apiBaseUrl = 'https://';
  static double getScreenWidth() => ScreenUtil().screenWidth;
  static double getScreenHeight() => ScreenUtil().screenHeight;
}
