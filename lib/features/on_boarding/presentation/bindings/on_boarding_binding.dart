import 'package:get/get.dart';

import '../../domain/use_cases/login_user.dart';
import '../controllers/on_boarding_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingController(
          Get.find<LoginUser>(),
        ));
  }
}
