import 'package:aquaalert/core/enums_with_extensions/appliance_type.dart';

class Appliance {
  final String name;
  final String iconPath;
  final bool isIndoor;
  final ApplianceType applianceType;
  Appliance({
    required this.name,
    required this.iconPath,
    required this.isIndoor,
    required this.applianceType,
  });
}
