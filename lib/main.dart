import 'package:aquaalert/app/binding/app_binding.dart';
import 'package:aquaalert/app/configs/app_config.dart';
import 'package:aquaalert/app/routes/app_pages.dart';
import 'package:aquaalert/core/font_families/font_families.dart';
import 'package:aquaalert/core/resources/app_resources.dart';
import 'package:aquaalert/features/stage/features/appliances/appliances_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/app_routes.dart';
import 'features/on_boarding/on_boarding_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  OnBoardingModule().init();
  AppliancesModule().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 780),
      child: GetMaterialApp(
        title: AppConfig.appName,
        defaultTransition: Transition.zoom,
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
        initialRoute: AppRoutes.splash,
        getPages: AppPages.pages,
        initialBinding: AppBinding(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: FontFamilies.defaultFamily,
        ),
      ),
    );
  }
}
