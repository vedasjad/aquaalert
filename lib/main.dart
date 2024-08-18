import 'package:aquaalert/app/configs/app_config.dart';
import 'package:aquaalert/features/stage/features/appliances/appliances_module.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/binding/app_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'core/font_families/font_families.dart';
import 'core/resources/app_resources.dart';
import 'features/on_boarding/on_boarding_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  OnBoardingModule().init();
  AppliancesModule().init();
  // HomeModule().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConfig.appName,
      enableLog: true,
      defaultTransition: Transition.rightToLeftWithFade,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: Scaffold(
            backgroundColor: AppColors.white,
            body: SafeArea(
              child: child!,
            ),
          ),
        );
      },
      initialRoute: kDebugMode ? AppRoutes.stage : AppRoutes.onBoarding,
      getPages: AppPages.pages,
      initialBinding: AppBinding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: FontFamilies.defaultFamily,
      ),
    );
  }
}
