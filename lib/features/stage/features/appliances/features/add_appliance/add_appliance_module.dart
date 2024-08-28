import 'package:aquaalert/features/stage/features/appliances/features/add_appliance/domain/use_cases/connect_appliance.dart';
import 'package:aquaalert/features/stage/features/appliances/features/add_appliance/presentation/controllers/add_appliance_controller.dart';
import 'package:get/get.dart';

class AddAppliancesModule extends GetxService {
  void init() {
    Get.lazyPut<ConnectAppliance>(
      () => ConnectAppliance(
        Get.find(),
      ),
    );
    Get.lazyPut<AddApplianceController>(
      () => AddApplianceController(
        connectAppliance: Get.find(),
      ),
    );
  }
}
