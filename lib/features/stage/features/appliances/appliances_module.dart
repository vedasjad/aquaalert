import 'package:aquaalert/features/stage/features/appliances/presentation/controllers/appliances_controller.dart';
import 'package:aquaalert/features/stage/features/appliances/presentation/navigation_handler/appliances_navigation_handler.dart';
import 'package:get/get.dart';

import 'features/add_appliance/data/repositories/add_appliance_repository_impl.dart';
import 'features/add_appliance/domain/repositories/add_appliance_repository.dart';

class AppliancesModule extends GetxService {
  void init() {
    Get.lazyPut<AddApplianceRepository>(
      () => AddApplianceRepositoryImpl(),
    );
    Get.lazyPut<AppliancesNavigationHandler>(
      () => AppliancesNavigationHandlerImpl(),
    );
    Get.lazyPut<AppliancesController>(
      () => AppliancesController(
        navigationHandler: Get.find(),
      ),
    );
  }
}
