import 'package:aquaalert/app/routes/app_routes.dart';
import 'package:aquaalert/features/on_boarding/presentation/bindings/on_boarding_binding.dart';
import 'package:aquaalert/features/stage/features/appliances/features/add_appliance/presentation/bindings/add_appliance_binding.dart';
import 'package:aquaalert/features/stage/features/appliances/features/add_appliance/presentation/pages/add_appliance_page.dart';
import 'package:aquaalert/features/stage/features/appliances/presentation/bindings/appliances_binding.dart';
import 'package:aquaalert/features/stage/features/home/presentation/bindings/home_binding.dart';
import 'package:aquaalert/features/stage/features/nemo/presentation/bindings/nemo_binding.dart';
import 'package:aquaalert/features/stage/presentation/pages/stage_page.dart';
import 'package:get/get.dart';

import '../../features/on_boarding/features/login/presentation/pages/login_page.dart';
import '../../features/on_boarding/presentation/pages/on_boarding_page.dart';
import '../../features/stage/presentation/bindings/stage_binding.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnBoardingPage(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: AppRoutes.stage,
      page: () => const StagePage(),
      bindings: [
        StageBinding(),
        NemoBinding(),
        AppliancesBinding(),
        HomeBinding(),
      ],
      children: [
        GetPage(
          name: AppRoutes.addAppliance,
          page: () => const AddAppliancePage(),
          binding: AddApplianceBinding(),
        ),
      ],
    ),
  ];
}
