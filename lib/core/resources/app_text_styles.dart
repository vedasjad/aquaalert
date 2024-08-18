part of 'app_resources.dart';

class AppTextStyles {
  AppTextStyles._();

  // Specific font sizes
  static const double microFontSize = 8.0;
  static const double extraSmallFontSize = 10.0;
  static const double smallFontSize = 12.0;
  static const double defaultFontSize = 14.0;
  static const double mediumFontSize = 16.0;
  static const double largeFontSize = 18.0;
  static const double extraLargeFontSize = 20.0;
  static const double extraExtraLargeFontSize = 24.0;

  // Font weights
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
        color: AppColors.black,
      );

  static TextStyle _defaultBase({
    required double fontSize,
    required FontWeight fontWeight,
  }) =>
      TextStyle(
        fontFamily: FontFamilies.defaultFamily,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: AppColors.black,
      );

  static TextStyle _robotoBase({
    required double fontSize,
    required FontWeight fontWeight,
  }) =>
      GoogleFonts.roboto(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: AppColors.black,
      );

  /// Lexend text styles
  static TextStyle lexendExtraExtraLargeBold = _lexendBase(
    fontSize: extraExtraLargeFontSize,
    fontWeight: bold,
  );

  static TextStyle lexendExtraLargeSemiBold = _lexendBase(
    fontSize: extraLargeFontSize,
    fontWeight: semiBold,
  );

  static TextStyle lexendLargeMedium = _lexendBase(
    fontSize: largeFontSize,
    fontWeight: medium,
  );

  static TextStyle lexendMediumRegular = _lexendBase(
    fontSize: mediumFontSize,
    fontWeight: regular,
  );

  static TextStyle lexendSmallRegular = _lexendBase(
    fontSize: smallFontSize,
    fontWeight: regular,
  );

  static TextStyle lexendExtraSmallRegular = _lexendBase(
    fontSize: extraSmallFontSize,
    fontWeight: regular,
  );

  static TextStyle lexendMicroRegular = _lexendBase(
    fontSize: microFontSize,
    fontWeight: regular,
  );

  /// DMSans text styles

  // Extra Extra Large
  static TextStyle extraExtraLargeLight = _defaultBase(
    fontSize: extraExtraLargeFontSize,
    fontWeight: light,
  );
  static TextStyle extraExtraLargeRegular = _defaultBase(
    fontSize: extraExtraLargeFontSize,
    fontWeight: regular,
  );
  static TextStyle extraExtraLargeMedium = _defaultBase(
    fontSize: extraExtraLargeFontSize,
    fontWeight: medium,
  );
  static TextStyle extraExtraLargeSemiBold = _defaultBase(
    fontSize: extraExtraLargeFontSize,
    fontWeight: semiBold,
  );
  static TextStyle extraExtraLargeBold = _defaultBase(
    fontSize: extraExtraLargeFontSize,
    fontWeight: bold,
  );
  static TextStyle extraExtraLargeExtraBold = _defaultBase(
    fontSize: extraExtraLargeFontSize,
    fontWeight: extraBold,
  );

  // Extra Large
  static TextStyle extraLargeLight = _defaultBase(
    fontSize: extraLargeFontSize,
    fontWeight: light,
  );
  static TextStyle extraLargeRegular = _defaultBase(
    fontSize: extraLargeFontSize,
    fontWeight: regular,
  );
  static TextStyle extraLargeMedium = _defaultBase(
    fontSize: extraLargeFontSize,
    fontWeight: medium,
  );
  static TextStyle extraLargeSemiBold = _defaultBase(
    fontSize: extraLargeFontSize,
    fontWeight: semiBold,
  );
  static TextStyle extraLargeBold = _defaultBase(
    fontSize: extraLargeFontSize,
    fontWeight: bold,
  );
  static TextStyle extraLargeExtraBold = _defaultBase(
    fontSize: extraLargeFontSize,
    fontWeight: extraBold,
  );

  // Large
  static TextStyle largeLight = _defaultBase(
    fontSize: largeFontSize,
    fontWeight: light,
  );
  static TextStyle largeRegular = _defaultBase(
    fontSize: largeFontSize,
    fontWeight: regular,
  );
  static TextStyle largeMedium = _defaultBase(
    fontSize: largeFontSize,
    fontWeight: medium,
  );
  static TextStyle largeSemiBold = _defaultBase(
    fontSize: largeFontSize,
    fontWeight: semiBold,
  );
  static TextStyle largeBold = _defaultBase(
    fontSize: largeFontSize,
    fontWeight: bold,
  );
  static TextStyle largeExtraBold = _defaultBase(
    fontSize: largeFontSize,
    fontWeight: extraBold,
  );

  // Medium
  static TextStyle mediumLight = _defaultBase(
    fontSize: mediumFontSize,
    fontWeight: light,
  );
  static TextStyle mediumRegular = _defaultBase(
    fontSize: mediumFontSize,
    fontWeight: regular,
  );
  static TextStyle mediumMedium = _defaultBase(
    fontSize: mediumFontSize,
    fontWeight: medium,
  );
  static TextStyle mediumSemiBold = _defaultBase(
    fontSize: mediumFontSize,
    fontWeight: semiBold,
  );
  static TextStyle mediumBold = _defaultBase(
    fontSize: mediumFontSize,
    fontWeight: bold,
  );
  static TextStyle mediumExtraBold = _defaultBase(
    fontSize: mediumFontSize,
    fontWeight: extraBold,
  );

  // Normal
  static TextStyle normalLight = _defaultBase(
    fontSize: defaultFontSize,
    fontWeight: light,
  );
  static TextStyle normalRegular = _defaultBase(
    fontSize: defaultFontSize,
    fontWeight: regular,
  );
  static TextStyle normalMedium = _defaultBase(
    fontSize: defaultFontSize,
    fontWeight: medium,
  );
  static TextStyle normalSemiBold = _defaultBase(
    fontSize: defaultFontSize,
    fontWeight: semiBold,
  );
  static TextStyle normalBold = _defaultBase(
    fontSize: defaultFontSize,
    fontWeight: bold,
  );
  static TextStyle normalExtraBold = _defaultBase(
    fontSize: defaultFontSize,
    fontWeight: extraBold,
  );

  // Small
  static TextStyle smallLight = _defaultBase(
    fontSize: smallFontSize,
    fontWeight: light,
  );
  static TextStyle smallRegular = _defaultBase(
    fontSize: smallFontSize,
    fontWeight: regular,
  );
  static TextStyle smallMedium = _defaultBase(
    fontSize: smallFontSize,
    fontWeight: medium,
  );
  static TextStyle smallSemiBold = _defaultBase(
    fontSize: smallFontSize,
    fontWeight: semiBold,
  );
  static TextStyle smallBold = _defaultBase(
    fontSize: smallFontSize,
    fontWeight: bold,
  );
  static TextStyle smallExtraBold = _defaultBase(
    fontSize: smallFontSize,
    fontWeight: extraBold,
  );

  // Extra Small
  static TextStyle extraSmallLight = _defaultBase(
    fontSize: extraSmallFontSize,
    fontWeight: light,
  );
  static TextStyle extraSmallRegular = _defaultBase(
    fontSize: extraSmallFontSize,
    fontWeight: regular,
  );
  static TextStyle extraSmallMedium = _defaultBase(
    fontSize: extraSmallFontSize,
    fontWeight: medium,
  );
  static TextStyle extraSmallSemiBold = _defaultBase(
    fontSize: extraSmallFontSize,
    fontWeight: semiBold,
  );
  static TextStyle extraSmallBold = _defaultBase(
    fontSize: extraSmallFontSize,
    fontWeight: bold,
  );
  static TextStyle extraSmallExtraBold = _defaultBase(
    fontSize: extraSmallFontSize,
    fontWeight: extraBold,
  );

  // Micro
  static TextStyle microLight = _defaultBase(
    fontSize: microFontSize,
    fontWeight: light,
  );
  static TextStyle microRegular = _defaultBase(
    fontSize: microFontSize,
    fontWeight: regular,
  );
  static TextStyle microMedium = _defaultBase(
    fontSize: microFontSize,
    fontWeight: medium,
  );
  static TextStyle microSemiBold = _defaultBase(
    fontSize: microFontSize,
    fontWeight: semiBold,
  );
  static TextStyle microBold = _defaultBase(
    fontSize: microFontSize,
    fontWeight: bold,
  );
  static TextStyle microExtraBold = _defaultBase(
    fontSize: microFontSize,
    fontWeight: extraBold,
  );

  /// Roboto text styles
  static TextStyle robotoExtraExtraLargeExtraBold = _robotoBase(
    fontSize: extraExtraLargeFontSize,
    fontWeight: extraBold,
  );

  static TextStyle robotoExtraLargeBold = _robotoBase(
    fontSize: extraLargeFontSize,
    fontWeight: bold,
  );

  static TextStyle robotoLargeMedium = _robotoBase(
    fontSize: largeFontSize,
    fontWeight: medium,
  );

  static TextStyle robotoMediumRegular = _robotoBase(
    fontSize: mediumFontSize,
    fontWeight: regular,
  );

  static TextStyle robotoSmallRegular = _robotoBase(
    fontSize: smallFontSize,
    fontWeight: regular,
  );

  static TextStyle robotoExtraSmallRegular = _robotoBase(
    fontSize: extraSmallFontSize,
    fontWeight: regular,
  );

  static TextStyle robotoMicroRegular = _robotoBase(
    fontSize: microFontSize,
    fontWeight: regular,
  );
}
