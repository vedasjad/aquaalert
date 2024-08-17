import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:aquaalert/core/resources/resources.dart';

void main() {
  test('app_icons assets test', () {
    expect(File(AppIcons.appliancesActive).existsSync(), isTrue);
    expect(File(AppIcons.appliancesInactive).existsSync(), isTrue);
    expect(File(AppIcons.arrowLeft).existsSync(), isTrue);
    expect(File(AppIcons.authentication).existsSync(), isTrue);
    expect(File(AppIcons.bell).existsSync(), isTrue);
    expect(File(AppIcons.bellRounded).existsSync(), isTrue);
    expect(File(AppIcons.drop).existsSync(), isTrue);
    expect(File(AppIcons.faucet).existsSync(), isTrue);
    expect(File(AppIcons.filter).existsSync(), isTrue);
    expect(File(AppIcons.grid).existsSync(), isTrue);
    expect(File(AppIcons.heartRounded).existsSync(), isTrue);
    expect(File(AppIcons.homeActive).existsSync(), isTrue);
    expect(File(AppIcons.homeInactive).existsSync(), isTrue);
    expect(File(AppIcons.hydraActive).existsSync(), isTrue);
    expect(File(AppIcons.hydraInactive).existsSync(), isTrue);
    expect(File(AppIcons.info).existsSync(), isTrue);
    expect(File(AppIcons.link).existsSync(), isTrue);
    expect(File(AppIcons.logout).existsSync(), isTrue);
    expect(File(AppIcons.meatballsMenu).existsSync(), isTrue);
    expect(File(AppIcons.person).existsSync(), isTrue);
    expect(File(AppIcons.profileInactive).existsSync(), isTrue);
    expect(File(AppIcons.rOSystem).existsSync(), isTrue);
    expect(File(AppIcons.rowsVertical).existsSync(), isTrue);
    expect(File(AppIcons.search).existsSync(), isTrue);
    expect(File(AppIcons.shower).existsSync(), isTrue);
    expect(File(AppIcons.usageActive).existsSync(), isTrue);
    expect(File(AppIcons.usageInactive).existsSync(), isTrue);
    expect(File(AppIcons.warning).existsSync(), isTrue);
    expect(File(AppIcons.washingMachine).existsSync(), isTrue);
  });
}
