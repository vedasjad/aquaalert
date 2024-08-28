import 'package:aquaalert/features/on_boarding/features/sign_up/presentation/pages/add_main_controller_page/scan_qr_code_page.dart';
import 'package:get/get.dart';

abstract class SignUpNavigationHandler {
  void goToScanQRPage();
}

class SignUpNavigationHandlerImpl extends SignUpNavigationHandler {
  @override
  void goToScanQRPage() {
    Get.to(
      () => const ScanQRCodePage(),
    );
  }
}
