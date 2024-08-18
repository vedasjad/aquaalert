import 'dart:math';

import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:get/get.dart';

extension Percentage on num {
  double get h => ScreenUtil().height(this);
  double get w => ScreenUtil().width(this);
  double get sp => ScreenUtil().setSp(this);
  double get r => ScreenUtil().setSp(this);
}

class ScreenUtil {

  //Need to solve the scaling issue in Release mode

  double get scaleWidth =>
      Get.width == 0 ? 1 : Get.width / AppSizes.designSize.width;
  double get scaleHeight =>
      Get.height == 0 ? 1 : Get.height / AppSizes.designSize.height;
  double get scaleText => min(scaleWidth, scaleHeight);

  double height(num height) {
    // print(
    //     ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>${kDebugMode ? "DebugMode" : "ReleaseMode"} Scale Height = $scaleHeight<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
    return height * scaleHeight;
  }

  double width(num width) {
    // print(
    //     ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>${kDebugMode ? "DebugMode" : "ReleaseMode"} Scale Width = $scaleWidth<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
    return width * scaleWidth;
  }

  double setSp(num fontSize) => fontSize * scaleText;
}
