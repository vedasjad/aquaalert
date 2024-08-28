import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:aquaalert/core/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.aquaAlertLogo).existsSync(), isTrue);
    expect(File(AppImages.aquaAlertTitle).existsSync(), isTrue);
    expect(File(AppImages.scanQr).existsSync(), isTrue);
    expect(File(AppImages.white).existsSync(), isTrue);
  });
}
