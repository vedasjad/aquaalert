import 'package:aquaalert/core/errors/failures.dart';
import 'package:aquaalert/features/stage/features/appliances/domain/entities/operational_appliance.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../../../../../../app/routes/app_routes.dart';
import '../../../../../../core/utils/type_def.dart';

abstract class AppliancesNavigationHandler {
  ResultFuture<OperationalAppliance> goToAddAppliance();
}

class AppliancesNavigationHandlerImpl extends AppliancesNavigationHandler {
  @override
  ResultFuture<OperationalAppliance> goToAddAppliance() async {
    final result =
        await Get.toNamed("${AppRoutes.stage}${AppRoutes.addAppliance}");
    if (result != null) {
      return Right(result);
    }
    return Left(CacheFailure());
  }
}
