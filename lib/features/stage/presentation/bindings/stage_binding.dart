import 'package:aquaalert/features/stage/presentation/controllers/stage_controller.dart';
import 'package:get/get.dart';

class StageBinding extends Bindings {
  StageBinding({
    this.initialIndex = 1,
  });
  final int initialIndex;
  @override
  void dependencies() {
    Get.lazyPut(
      () => StageController(
        initialIndex: initialIndex,
      ),
    );
  }
}
