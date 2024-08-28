import 'package:aquaalert/core/utils/type_def.dart';
import 'package:aquaalert/features/stage/features/appliances/domain/entities/operational_appliance.dart';

abstract class AddApplianceRepository {
  ResultFuture<OperationalAppliance> connectAppliance(String qrData);
}
