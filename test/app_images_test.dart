import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:aquaalert/core/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.a1_).existsSync(), isTrue);
    expect(File(AppImages.a).existsSync(), isTrue);
    expect(File(AppImages.aquaAlert).existsSync(), isTrue);
    expect(File(AppImages.white).existsSync(), isTrue);
  });
}
