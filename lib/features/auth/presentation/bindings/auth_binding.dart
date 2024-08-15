import 'package:get/get.dart';

import '../../domain/use_cases/login_user.dart';
import '../controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController(
          Get.find<LoginUser>(),
        ));
  }
}
