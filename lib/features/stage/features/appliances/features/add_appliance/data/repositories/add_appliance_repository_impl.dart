import 'package:aquaalert/core/resources/resources.dart';
import 'package:aquaalert/core/utils/type_def.dart';
import 'package:aquaalert/features/stage/features/appliances/domain/entities/operational_appliance.dart';
import 'package:aquaalert/features/stage/features/appliances/features/add_appliance/domain/repositories/add_appliance_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../data/models/operational_appliance_model.dart';

class AddApplianceRepositoryImpl extends AddApplianceRepository {
  @override
  ResultFuture<OperationalAppliance> connectAppliance(String qrData) async {
    // await Future.delayed(const Duration(seconds: 1));
    final Map<String, dynamic> jsonData = _parseQrData(qrData);
    return Right(
      OperationalApplianceModel.fromJson(jsonData).toEntity(),
    );
  }

  Map<String, dynamic> _parseQrData(String qrData) {
    return {
      'location': 'Living Room',
      'status': {
        'isRunning': true,
        'lastUsed': DateTime.now().toIso8601String(),
      },
      'appliance': {
        'name': 'Washing Machine',
        'iconPath': AppIcons.washingMachine,
        'isIndoor': true,
        'applianceType': 'washingMachine',
      },
      'id': '123',
      'ipAddress': '192.168.1.1'
    };
  }
}
