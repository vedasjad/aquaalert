import 'package:aquaalert/features/stage/features/appliances/features/add_appliance/presentation/controllers/add_appliance_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../../../../../../core/resources/app_resources.dart';

class AddAppliancePage extends GetView<AddApplianceController> {
  const AddAppliancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scan QR Code',
          style: AppTextStyles.extraExtraLargeBold,
        ),
      ),
      body: MobileScanner(
        onDetect: (barcode) {
          if (barcode.barcodes.first.rawValue != null) {
            // final String qrData = jsonEncode(barcode.raw!);
            if (controller.isScanned.isFalse) {
              controller.addAppliance("qrData");
            }
          }
        },
      ),
    );
  }
}
