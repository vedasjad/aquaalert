import 'package:aquaalert/features/on_boarding/features/sign_up/domain/entities/main_controller.dart';
import 'package:get/get.dart';

import '../../../../../../../core/utils/logger.dart';
import '../../../domain/use_cases/connect_controller.dart';
import '../../navigation_handler/sign_up_navigation_handler.dart';

class AddMainControllerPageController extends GetxController {
  final ConnectController _connectController;
  final SignUpNavigationHandler _navigationHandler;
  AddMainControllerPageController({
    required ConnectController connectController,
    required SignUpNavigationHandler navigationHandler,
  })  : _connectController = connectController,
        _navigationHandler = navigationHandler;

  final Rx<bool> _isMainControllerAdded = false.obs;
  final Rx<bool> isScanned = false.obs;
  final Rxn<MainController> _mainController = Rxn<MainController>();

  Future<void> addMainController(String qrData) async {
    isScanned.value = true;
    update();
    try {
      final result = await _connectController(
        qrData,
      );

      result.fold(
        (failure) {
          log.e(failure.message);
        },
        (mainController) {
          _mainController.value = mainController;
          Get.back();
          _isMainControllerAdded.value = true;
          update();
        },
      );
    } catch (e) {
      Get.snackbar('Error', 'Failed to connect to Main Controller');
    }
  }

  void addAppliance() {
    _navigationHandler.goToScanQRPage();
  }

  bool get isMainControllerAdded => _isMainControllerAdded.value;
}
