import 'package:aquaalert/features/on_boarding/features/sign_up/domain/entities/main_controller.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/domain/respositories/sign_up_repository.dart';

import '../../../../../../../../core/use_cases/use_cases.dart';
import '../../../../../../../../core/utils/type_def.dart';

class ConnectController implements UseCaseWithParams<MainController, String> {
  final SignUpRepository repository;

  ConnectController(this.repository);

  @override
  ResultFuture<MainController> call(String qrData) async {
    return repository.connectController(qrData);
  }
}
