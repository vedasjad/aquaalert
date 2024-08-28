// lib/features/stage/features/appliances/data/models/appliance_model.dart

import 'package:aquaalert/core/entities/appliances/appliance.dart';
import 'package:aquaalert/core/enums_with_extensions/appliance_type.dart';

class ApplianceModel extends Appliance {
  ApplianceModel({
    required super.name,
    required super.iconPath,
    required super.isIndoor,
    required super.applianceType,
  });

  // Factory constructor for creating a new instance from a map
  factory ApplianceModel.fromJson(Map<String, dynamic> json) {
    return ApplianceModel(
      name: json['name'],
      iconPath: json['iconPath'],
      isIndoor: json['isIndoor'],
      applianceType: ApplianceType.values.firstWhere(
        (e) => e.toString() == 'ApplianceType.${json['applianceType']}',
      ),
    );
  }

  // Method for converting instance to a map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'iconPath': iconPath,
      'isIndoor': isIndoor,
      'applianceType': applianceType.toString().split('.').last,
    };
  }

  // Method for converting model to entity
  Appliance toEntity() {
    return Appliance(
      name: name,
      iconPath: iconPath,
      isIndoor: isIndoor,
      applianceType: applianceType,
    );
  }

  // Factory constructor for creating a model from an entity
  factory ApplianceModel.fromEntity(Appliance entity) {
    return ApplianceModel(
      name: entity.name,
      iconPath: entity.iconPath,
      isIndoor: entity.isIndoor,
      applianceType: entity.applianceType,
    );
  }
}
