import 'package:aquaalert/core/entities/appliances/appliance.dart';

import 'appliance_status.dart';

class OperationalAppliance {
  final ApplianceStatus status;
  final Appliance appliance;
  final String location;
  final String id;
  final String ipAddress;
  final bool isNewlyAdded;

  OperationalAppliance({
    required this.location,
    required this.status,
    required this.appliance,
    required this.id,
    required this.ipAddress,
    this.isNewlyAdded = false,
  });

  OperationalAppliance copyWith({
    ApplianceStatus? status,
    Appliance? appliance,
    String? location,
    String? id,
    String? ipAddress,
    bool? isNewlyAdded,
  }) {
    return OperationalAppliance(
      status: status ?? this.status,
      appliance: appliance ?? this.appliance,
      location: location ?? this.location,
      id: id ?? this.id,
      ipAddress: ipAddress ?? this.ipAddress,
      isNewlyAdded: isNewlyAdded ?? this.isNewlyAdded,
    );
  }
}
