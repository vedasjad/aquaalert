import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:aquaalert/core/resources/resources.dart';

void main() {
  test('app_icons assets test', () {
    expect(File(AppIcons.activitiesAmber).existsSync(), isTrue);
    expect(File(AppIcons.activitiesBlack).existsSync(), isTrue);
    expect(File(AppIcons.bell).existsSync(), isTrue);
    expect(File(AppIcons.clockAmber).existsSync(), isTrue);
    expect(File(AppIcons.clockBlack).existsSync(), isTrue);
    expect(File(AppIcons.homeAmber).existsSync(), isTrue);
    expect(File(AppIcons.homeBlack).existsSync(), isTrue);
    expect(File(AppIcons.tap).existsSync(), isTrue);
  });
}
