import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:aquaalert/core/resources/resources.dart';

void main() {
  test('app_icons assets test', () {
    expect(File(AppIcons.bell).existsSync(), isTrue);
    expect(File(AppIcons.tap).existsSync(), isTrue);
  });
}
