import 'package:aquaalert/features/on_boarding/features/sign_up/domain/use_cases/connect_controller.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/controllers/add_main_controller_page/add_main_controller_page_controller.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/navigation_handler/sign_up_navigation_handler.dart';
import 'package:get/get.dart';

import '../../../data/repositories/sign_up_repository_impl.dart';
import '../../../domain/respositories/sign_up_repository.dart';

class AddMainControllerPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpRepository>(
      () => SignUpRepositoryImpl(),
    );
    Get.lazyPut<SignUpNavigationHandler>(
      () => SignUpNavigationHandlerImpl(),
    );
    Get.lazyPut(
      () => ConnectController(
        Get.find(),
      ),
    );
    Get.lazyPut<AddMainControllerPageController>(
      () => AddMainControllerPageController(
        connectController: Get.find(),
        navigationHandler: Get.find(),
      ),
    );
  }
}
