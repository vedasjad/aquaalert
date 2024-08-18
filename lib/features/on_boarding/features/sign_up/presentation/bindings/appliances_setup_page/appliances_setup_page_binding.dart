import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/controllers/appliances_setup_page/appliances_setup_page_controller.dart';
import 'package:get/get.dart';

class AppliancesSetupPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppliancesSetupPageController());
  }
}
