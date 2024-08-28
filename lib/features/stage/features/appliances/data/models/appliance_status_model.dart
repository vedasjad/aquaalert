import 'package:aquaalert/features/stage/features/appliances/domain/entities/appliance_status.dart';

class ApplianceStatusModel extends ApplianceStatus {
  ApplianceStatusModel({
    required super.isRunning,
    super.lastUsed,
  });

  factory ApplianceStatusModel.fromJson(Map<String, dynamic> json) {
    return ApplianceStatusModel(
      isRunning: json['isRunning'],
      lastUsed:
          json['lastUsed'] != null ? DateTime.parse(json['lastUsed']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isRunning': isRunning,
      'lastUsed': lastUsed?.toIso8601String(),
    };
  }

  ApplianceStatus toEntity() {
    return ApplianceStatus(
      isRunning: isRunning,
      lastUsed: lastUsed,
    );
  }

  factory ApplianceStatusModel.fromEntity(ApplianceStatus entity) {
    return ApplianceStatusModel(
      isRunning: entity.isRunning,
      lastUsed: entity.lastUsed,
    );
  }
}
