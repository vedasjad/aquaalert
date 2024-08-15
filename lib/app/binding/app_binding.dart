import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../core/network/client/dio_client.dart';
import '../../core/network/client/network_info.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      DioClient(
        Dio(),
      ),
    );
    Get.put(
      NetworkInfo(
        Connectivity(),
      ),
    );
  }
}
