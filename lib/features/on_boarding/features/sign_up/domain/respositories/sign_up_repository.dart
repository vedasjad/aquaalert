import '../../../../../../core/utils/type_def.dart';
import '../entities/main_controller.dart';

abstract class SignUpRepository {
  ResultFuture<MainController> connectController(String qrData);
}
