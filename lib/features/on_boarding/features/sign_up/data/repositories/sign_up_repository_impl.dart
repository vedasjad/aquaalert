import 'package:aquaalert/features/on_boarding/features/sign_up/data/models/main_controller_model.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/domain/entities/main_controller.dart';
import 'package:aquaalert/features/on_boarding/features/sign_up/domain/respositories/sign_up_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/utils/type_def.dart';

class SignUpRepositoryImpl extends SignUpRepository {
  @override
  ResultFuture<MainController> connectController(String qrData) async {
    final Map<String, dynamic> jsonData = _parseQrData(qrData);
    return Right(
      MainControllerModel.fromJson(jsonData).toEntity(),
    );
  }

  Map<String, dynamic> _parseQrData(String qrData) {
    return {
      'id': '102011',
    };
  }
}
