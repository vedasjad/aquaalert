part of '../widgets/profile_settings_tile.dart';

class ProfileSettingsTileAttributes {
  final String iconPath;
  final String title;
  final String? subTitle;
  final bool? hasWarning;
  ProfileSettingsTileAttributes({
    required this.title,
    required this.iconPath,
    this.subTitle,
    this.hasWarning,
  });
}
