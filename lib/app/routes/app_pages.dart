import 'package:aquaalert/app/routes/app_routes.dart';
import 'package:aquaalert/features/auth/presentation/pages/login_page.dart';
import 'package:aquaalert/features/stage/presentation/pages/stage_page.dart';
import 'package:get/get.dart';

import '../../features/stage/presentation/bindings/stage_binding.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: AppRoutes.stage,
      page: () => const StagePage(),
      binding: StageBinding(),
    ),
  ];
}
