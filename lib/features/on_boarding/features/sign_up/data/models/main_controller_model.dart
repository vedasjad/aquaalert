import '../../domain/entities/main_controller.dart';

class MainControllerModel extends MainController {
  MainControllerModel({
    required super.id,
  });

  factory MainControllerModel.fromJson(Map<String, dynamic> json) {
    return MainControllerModel(
      id: json['id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }

  factory MainControllerModel.fromEntity(MainController entity) {
    return MainControllerModel(
      id: entity.id,
    );
  }

  MainController toEntity() {
    return MainController(
      id: id,
    );
  }
}
