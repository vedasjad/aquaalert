import 'package:aquaalert/features/appliances/presentation/controllers/appliances_controller.dart';
import 'package:get/get.dart';

class AppliancesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AppliancesController(),
    );
  }
}
