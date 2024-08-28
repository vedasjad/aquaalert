import 'package:aquaalert/core/utils/logger.dart';
import 'package:aquaalert/features/stage/features/appliances/domain/entities/operational_appliance.dart';
import 'package:get/get.dart';

import '../../domain/use_cases/connect_appliance.dart';

class AddApplianceController extends GetxController {
  final ConnectAppliance _connectAppliance;
  AddApplianceController({
    required ConnectAppliance connectAppliance,
  }) : _connectAppliance = connectAppliance;

  // final Rxn<OperationalAppliance> _newAppliance = Rxn<OperationalAppliance>();
  final Rx<bool> isScanned = false.obs;

  Future<void> addAppliance(String qrData) async {
    isScanned.value = true;
    try {
      final result = await _connectAppliance(
        qrData,
      );

      result.fold(
        (failure) {
          log.e(failure.message);
        },
        (appliance) {
          isScanned.value = false;
          update();
          Get.back<OperationalAppliance>(
            result: appliance,
          );
        },
      );
    } catch (e) {
      Get.snackbar('Error', 'Failed to connect to appliance');
    }
  }
}
