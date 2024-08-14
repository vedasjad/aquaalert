import 'package:get/get.dart';

import '../bindings/auth_binding.dart';
import '../pages/login_page.dart';

class AuthRoutes {
  static const login = '/login';

  static List<GetPage> routes = [
    GetPage(
      name: login,
      page: () => LoginPage(),
      binding: AuthBinding(),
    ),
  ];
}
