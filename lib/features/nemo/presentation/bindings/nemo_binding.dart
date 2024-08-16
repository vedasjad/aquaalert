import 'package:aquaalert/features/nemo/presentation/controllers/nemo_controller.dart';
import 'package:get/get.dart';

class NemoBinding extends Bindings {
  NemoBinding({
    this.initialTabIndex = 2,
  });
  final int initialTabIndex;
  @override
  void dependencies() {
    Get.lazyPut(
      () => NemoController(
        initialTabIndex: initialTabIndex,
      ),
    );
  }
}
