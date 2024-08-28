import 'package:aquaalert/features/stage/features/appliances/presentation/controllers/appliances_controller.dart';
import 'package:get/get.dart';

class AppliancesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AppliancesController(
        navigationHandler: Get.find(),
      ),
    );
  }
}
