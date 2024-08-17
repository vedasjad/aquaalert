part of 'app_resources.dart';

class AppTextStyles {
  AppTextStyles._();

  static const double _defaultFontSize = 14.0;

  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;

  static TextStyle _lexendBase({
    required double fontSize,
    required FontWeight fontWeight,
  }) =>
      GoogleFonts.lexend(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
      );

  static TextStyle _dmSansBase({
    required double fontSize,
    required FontWeight fontWeight,
  }) =>
      GoogleFonts.dmSans(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
      );

  static TextStyle _robotoBase({
    required double fontSize,
    required FontWeight fontWeight,
  }) =>
      GoogleFonts.roboto(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
      );

  /// Lexend text styles

  static TextStyle lexendExtraLargeBold = _lexendBase(
    fontSize: _defaultFontSize * 1.25,
    fontWeight: bold,
  );

  static TextStyle lexendExtraLargeSemiBold = _lexendBase(
    fontSize: _defaultFontSize * 1.25,
    fontWeight: semiBold,
  );

  static TextStyle lexendExtraLargeMedium = _lexendBase(
    fontSize: _defaultFontSize * 1.25,
    fontWeight: medium,
  );

  static TextStyle lexendExtraLargeRegular = _lexendBase(
    fontSize: _defaultFontSize * 1.25,
    fontWeight: regular,
  );

  static TextStyle lexendLargeMedium = _lexendBase(
    fontSize: _defaultFontSize * 1.125,
    fontWeight: medium,
  );

  static TextStyle lexendNormalRegular = _lexendBase(
    fontSize: _defaultFontSize,
    fontWeight: regular,
  );

  static TextStyle lexendNormalSemiBold = _lexendBase(
    fontSize: _defaultFontSize,
    fontWeight: semiBold,
  );

  static TextStyle lexendSmallRegular = _lexendBase(
    fontSize: _defaultFontSize * 0.875,
    fontWeight: regular,
  );

  static TextStyle lexendSmallSemiBold = _lexendBase(
    fontSize: _defaultFontSize * 0.875,
    fontWeight: semiBold,
  );

  static TextStyle lexendExtraSmallRegular = _lexendBase(
    fontSize: _defaultFontSize * 0.75,
    fontWeight: regular,
  );

  static TextStyle lexendMicroRegular = _lexendBase(
    fontSize: _defaultFontSize * 0.625,
    fontWeight: regular,
  );

  /// DMSans text styles

  static TextStyle dmSansExtraLargeBold = _dmSansBase(
    fontSize: _defaultFontSize * 1.25,
    fontWeight: bold,
  );

  static TextStyle dmSansLargeBold = _dmSansBase(
    fontSize: _defaultFontSize * 1.125,
    fontWeight: bold,
  );

  static TextStyle dmSansLargeMedium = _dmSansBase(
    fontSize: _defaultFontSize * 1.125,
    fontWeight: medium,
  );

  static TextStyle dmSansNormalRegular = _dmSansBase(
    fontSize: _defaultFontSize,
    fontWeight: regular,
  );

  static TextStyle dmSansNormalSemiBold = _dmSansBase(
    fontSize: _defaultFontSize,
    fontWeight: semiBold,
  );

  static TextStyle dmSansNormalBold = _dmSansBase(
    fontSize: _defaultFontSize,
    fontWeight: bold,
  );

  static TextStyle dmSansSmallRegular = _dmSansBase(
    fontSize: _defaultFontSize * 0.875,
    fontWeight: regular,
  );

  static TextStyle dmSansSmallBold = _dmSansBase(
    fontSize: _defaultFontSize * 0.875,
    fontWeight: bold,
  );

  static TextStyle dmSansExtraSmallRegular = _dmSansBase(
    fontSize: _defaultFontSize * 0.75,
    fontWeight: regular,
  );

  static TextStyle dmSansMicroRegular = _dmSansBase(
    fontSize: _defaultFontSize * 0.625,
    fontWeight: regular,
  );

  /// Roboto text styles

  static TextStyle robotoExtraLargeBold = _robotoBase(
    fontSize: _defaultFontSize * 1.25,
    fontWeight: bold,
  );

  static TextStyle robotoLargeMedium = _robotoBase(
    fontSize: _defaultFontSize * 1.125,
    fontWeight: medium,
  );

  static TextStyle robotoNormalRegular = _robotoBase(
    fontSize: _defaultFontSize,
    fontWeight: regular,
  );

  static TextStyle robotoSmallRegular = _robotoBase(
    fontSize: _defaultFontSize * 0.875,
    fontWeight: regular,
  );

  static TextStyle robotoExtraSmallRegular = _robotoBase(
    fontSize: _defaultFontSize * 0.75,
    fontWeight: regular,
  );

  static TextStyle robotoMicroRegular = _robotoBase(
    fontSize: _defaultFontSize * 0.625,
    fontWeight: regular,
  );

  static TextStyle robotoLargeBold = _robotoBase(
    fontSize: _defaultFontSize * 1.125,
    fontWeight: bold,
  );

  static TextStyle robotoNormalMedium = _robotoBase(
    fontSize: _defaultFontSize,
    fontWeight: medium,
  );

  static TextStyle robotoSmallMedium = _robotoBase(
    fontSize: _defaultFontSize * 0.875,
    fontWeight: medium,
  );

  static TextStyle robotoLargeSemiBold = _robotoBase(
    fontSize: _defaultFontSize * 1.125,
    fontWeight: semiBold,
  );

  static TextStyle robotoNormalBold = _robotoBase(
    fontSize: _defaultFontSize,
    fontWeight: bold,
  );

  static TextStyle robotoSmallBold = _robotoBase(
    fontSize: _defaultFontSize * 0.875,
    fontWeight: bold,
  );

  static TextStyle robotoExtraLargeExtraBold = _robotoBase(
    fontSize: _defaultFontSize * 1.25,
    fontWeight: extraBold,
  );

  static TextStyle robotoLargeExtraBold = _robotoBase(
    fontSize: _defaultFontSize * 1.125,
    fontWeight: extraBold,
  );

  static TextStyle robotoNormalExtraBold = _robotoBase(
    fontSize: _defaultFontSize,
    fontWeight: extraBold,
  );

  static TextStyle robotoSmallExtraBold = _robotoBase(
    fontSize: _defaultFontSize * 0.875,
    fontWeight: extraBold,
  );
}
