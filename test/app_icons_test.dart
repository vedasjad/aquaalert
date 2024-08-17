import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:aquaalert/core/resources/resources.dart';

void main() {
  test('app_icons assets test', () {
    expect(File(AppIcons.activitiesAmber).existsSync(), isTrue);
    expect(File(AppIcons.activitiesBlack).existsSync(), isTrue);
    expect(File(AppIcons.authentication).existsSync(), isTrue);
    expect(File(AppIcons.bell).existsSync(), isTrue);
    expect(File(AppIcons.bellRounded).existsSync(), isTrue);
    expect(File(AppIcons.clockAmber).existsSync(), isTrue);
    expect(File(AppIcons.clockBlack).existsSync(), isTrue);
    expect(File(AppIcons.filter).existsSync(), isTrue);
    expect(File(AppIcons.heartRounded).existsSync(), isTrue);
    expect(File(AppIcons.homeAmber).existsSync(), isTrue);
    expect(File(AppIcons.homeBlack).existsSync(), isTrue);
    expect(File(AppIcons.logout).existsSync(), isTrue);
    expect(File(AppIcons.person).existsSync(), isTrue);
    expect(File(AppIcons.search).existsSync(), isTrue);
    expect(File(AppIcons.tap).existsSync(), isTrue);
    expect(File(AppIcons.tapLeakage).existsSync(), isTrue);
    expect(File(AppIcons.warning).existsSync(), isTrue);
  });
}
