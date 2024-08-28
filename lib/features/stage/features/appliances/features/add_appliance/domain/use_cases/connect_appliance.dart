import 'package:aquaalert/features/stage/features/appliances/domain/entities/operational_appliance.dart';
import 'package:aquaalert/features/stage/features/appliances/features/add_appliance/domain/repositories/add_appliance_repository.dart';

import '../../../../../../../../core/use_cases/use_cases.dart';
import '../../../../../../../../core/utils/type_def.dart';

class ConnectAppliance
    implements UseCaseWithParams<OperationalAppliance, String> {
  final AddApplianceRepository repository;

  ConnectAppliance(this.repository);

  @override
  ResultFuture<OperationalAppliance> call(String qrData) async {
    return repository.connectAppliance(qrData);
  }
}
