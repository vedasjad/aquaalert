import 'package:aquaalert/features/history/presentation/controllers/history_controller.dart';
import 'package:get/get.dart';

class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HistoryController(),
    );
  }
}
