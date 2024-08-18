import 'package:aquaalert/features/stage/features/appliances/presentation/controllers/appliances_controller.dart';
import 'package:get/get.dart';

class AppliancesModule extends GetxService {
  void init() {
    Get.lazyPut<AppliancesController>(
      () => AppliancesController(),
    );
  }
}
