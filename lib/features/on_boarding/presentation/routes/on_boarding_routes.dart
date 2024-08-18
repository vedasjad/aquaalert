import 'package:get/get.dart';

import '../../features/login/presentation/pages/login_page.dart';
import '../bindings/on_boarding_binding.dart';

class AuthRoutes {
  static const login = '/login';

  static List<GetPage> routes = [
    GetPage(
      name: login,
      page: () => const LoginPage(),
      binding: OnBoardingBinding(),
    ),
  ];
}
