import 'package:aquaalert/app/routes/app_routes.dart';
import 'package:aquaalert/features/auth/presentation/pages/login_page.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
    ),
  ];
}
