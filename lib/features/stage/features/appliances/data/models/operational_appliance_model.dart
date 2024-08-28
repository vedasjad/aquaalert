// lib/features/stage/features/appliances/data/models/operational_appliance_model.dart

import 'package:aquaalert/core/models/appliances/appliance_model.dart';
import 'package:aquaalert/features/stage/features/appliances/domain/entities/operational_appliance.dart';

import 'appliance_status_model.dart';

class OperationalApplianceModel extends OperationalAppliance {
  OperationalApplianceModel({
    required super.location,
    required super.status,
    required super.appliance,
    required super.id,
    required super.ipAddress,
  });

  // Factory constructor for creating a new instance from a map
  factory OperationalApplianceModel.fromJson(Map<String, dynamic> json) {
    return OperationalApplianceModel(
      location: json['location'],
      status: ApplianceStatusModel.fromJson(json['status']),
      appliance: ApplianceModel.fromJson(json['appliance']),
      id: json['id'],
      ipAddress: json['ipAddress'],
    );
  }

  // Method for converting instance to a map
  Map<String, dynamic> toJson() {
    return {
      'location': location,
      'status': ApplianceStatusModel.fromEntity(status),
      'appliance': ApplianceModel.fromEntity(appliance),
      'id': id,
      'ipAddress': ipAddress,
    };
  }

  // Method for converting model to entity
  OperationalAppliance toEntity() {
    return OperationalAppliance(
      location: location,
      status: status,
      appliance: appliance,
      id: id,
      ipAddress: ipAddress,
    );
  }

  // Factory constructor for creating a model from an entity
  factory OperationalApplianceModel.fromEntity(OperationalAppliance entity) {
    return OperationalApplianceModel(
      location: entity.location,
      status: entity.status,
      appliance: entity.appliance,
      id: entity.id,
      ipAddress: entity.ipAddress,
    );
  }
}
