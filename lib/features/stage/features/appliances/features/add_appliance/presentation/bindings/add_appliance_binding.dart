import 'package:aquaalert/features/stage/features/appliances/features/add_appliance/data/repositories/add_appliance_repository_impl.dart';
import 'package:aquaalert/features/stage/features/appliances/features/add_appliance/domain/repositories/add_appliance_repository.dart';
import 'package:aquaalert/features/stage/features/appliances/features/add_appliance/presentation/controllers/add_appliance_controller.dart';
import 'package:get/get.dart';

import '../../domain/use_cases/connect_appliance.dart';

class AddApplianceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddApplianceRepository>(
      () => AddApplianceRepositoryImpl(),
    );
    Get.lazyPut<ConnectAppliance>(
      () => ConnectAppliance(
        Get.find(),
      ),
    );
    Get.lazyPut(
      () => AddApplianceController(
        connectAppliance: Get.find(),
      ),
    );
  }
}
