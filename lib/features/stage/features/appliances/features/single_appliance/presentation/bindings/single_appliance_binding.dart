import 'package:aquaalert/features/stage/features/appliances/features/single_appliance/presentation/controllers/single_appliance_controller.dart';
import 'package:get/get.dart';

class SingleApplianceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SingleApplianceController(),
    );
  }
}
