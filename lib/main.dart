import 'package:aquaalert/app/routes/app_pages.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_routes.dart';
import 'core/network/client/dio_client.dart';
import 'core/network/client/network_info.dart';
import 'features/auth/auth_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(DioClient(Dio()));
  Get.put(NetworkInfo(Connectivity()));

  AuthModule().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.login,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
