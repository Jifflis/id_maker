import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class Style {
  Style._();

  static const fontFamily = 'Poppins';

  static double get spacing1 => 1;
  static double get spacing2 => 2;
  static double get spacing3 => 3;
  static double get spacing4 => 4;
  static double get spacing5 => 5;
  static double get spacing6 => 6;
  static double get spacing7 => 7;
  static double get spacing8 => 8;
  static double get spacing9 => 9;
  static double get spacing10 => 10;
  static double get spacing12 => 12;
  static double get spacing14 => 14;
  static double get spacing16 => 16;
  static double get spacing18 => 18;
  static double get spacing20 => 20;
  static double get spacing22 => 22;
  static double get spacing23 => 23;
  static double get spacing24 => 24;
  static double get spacing28 => 28;
  static double get spacing30 => 30;
  static double get spacing36 => 36;
  static double get spacing50 => 50;
  static double get spacing60 => 60;
  static double get spacing70 => 70;


  //-- Colors
  static const Color colorAmber = Color(0xFFFCA800);
  static const Color colorBlack = Color(0xFF000000);
  static const Color colorBlack26 = Color(0xFF262626);
  static const Color colorBlack29 = Color(0xFF292929);
  static const Color colorBlack6D = Color(0xFF6D6D6D);
  static const Color colorBlack16 = Color(0xFF161616);
  static const Color colorBlack1F = Color(0xFF1F1F1F);
  static const Color colorBlack0F = Color(0xFF0F0F0F);
  static const Color colorBlack3F = Color(0xFF3F3F3F);
  static const Color colorBlack4F = Color(0xFF4F4F4F);
  static const Color colorWhite = Color(0xFFFFFFFF);
  static const Color colorWhiteC1 = Color(0xFFC1C1C1);

  static const Color colorPrimary = colorAmber;
  static const Color colorTextPrimary = colorBlack;


  static const boldFontWeight = FontWeight.w700;
  static const semiBoldFontWeight = FontWeight.w600;
  static const mediumFontWeight = FontWeight.w500;
  static const regularFontWeight = FontWeight.w400;
  static const lightFontWeight = FontWeight.w300;

  static const maxTextScaleFactor = 1.235294117647058; //this is two notches above 1.0 for iOS

  /// header1 - 50tp bold
  static TextStyle get header1 => const TextStyle(
      fontSize: 50,
      height: 1.2,
      color: colorTextPrimary,
      letterSpacing: 0,
      fontWeight: boldFontWeight);

  /// header2 - 30pt bold
  static TextStyle get header2 => const TextStyle(
      fontSize: 30,
      height: 1.23,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: boldFontWeight);

  /// header3 - 22pt bold
  static TextStyle get header3Regular => const TextStyle(
      fontSize: 20,
      height: 1.23,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: regularFontWeight);

  static TextStyle get header3Bold => const TextStyle(
      fontSize: 20,
      height: 1.23,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: boldFontWeight);

  /// header4 - 18pt bold

  static TextStyle get header4 => const TextStyle(
      fontSize: 18,
      height: 1.25,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: boldFontWeight);

  /// header5 - 18pt medium
  static TextStyle get header5 => const TextStyle(
      fontSize: 18,
      height: 1.25,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: semiBoldFontWeight);

  /// header5 - 18pt regular
  static TextStyle get header6 => const TextStyle(
      fontSize: 18,
      height: 1.25,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: regularFontWeight);

  static TextStyle get header6Bold => const TextStyle(
      fontSize: 18,
      height: 1.25,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: boldFontWeight);

  static TextStyle get header6SemiBold => const TextStyle(
      fontSize: 18,
      height: 1.25,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: semiBoldFontWeight);


  /// header6 - 16pt medium
  static TextStyle get header7 => const TextStyle(
      fontSize: 16,
      height: 1.25,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: mediumFontWeight);

  /// bodyCopy - 16pt regular
  static TextStyle get bodyCopy => const TextStyle(
      fontSize: 14,
      height: 1.25,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: regularFontWeight);

  static TextStyle get bodyCopyBold => const TextStyle(
      fontSize: 14,
      height: 1.25,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: boldFontWeight);

  static TextStyle get bodyCopySemiBold => const TextStyle(
      fontSize: 14,
      height: 1.25,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: semiBoldFontWeight);

  static TextStyle get bodyCopyMedium => const TextStyle(
      fontSize: 14,
      height: 1.25,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: mediumFontWeight);

  /// subHeader - 16pt medium italic
  static TextStyle get subHeader => const TextStyle(
        fontSize: 16,
        height: 1.125,
        color: Style.colorTextPrimary,
        letterSpacing: 0,
        fontWeight: mediumFontWeight,
        fontStyle: FontStyle.italic,
      );

  /// subText - 14pt regular
  static TextStyle get subText => const TextStyle(
      fontSize: 14,
      height: 1.14,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: regularFontWeight);

  /// finePrintBold - 12pt bold
  static TextStyle get finePrintBold => const TextStyle(
      fontSize: 12,
      height: 1.167,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: boldFontWeight);

  /// finePrint - 12pt regular
  static TextStyle get finePrint => const TextStyle(
      fontSize: 12,
      height: 1.18,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: regularFontWeight);

  static TextStyle get finePrintSemiBold => const TextStyle(
      fontSize: 12,
      height: 1.18,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: semiBoldFontWeight);

  static TextStyle get finePrintSemiBoldPrimary => const TextStyle(
      fontSize: 12,
      height: 1.18,
      color: Style.colorPrimary,
      letterSpacing: 0,
      fontWeight: semiBoldFontWeight);

  static TextStyle get finePrintLight => const TextStyle(
      fontSize: 12,
      height: 1.15,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: lightFontWeight);

  static TextStyle get finePrintMedium => const TextStyle(
      fontSize: 12,
      height: 1.15,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: mediumFontWeight);

  static TextStyle get tinyPrint => const TextStyle(
      fontSize: 10,
      height: 1.14,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: lightFontWeight);

  static TextStyle get tinyPrintBold => const TextStyle(
      fontSize: 10,
      height: 1.14,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: boldFontWeight);

  static TextStyle get tinyPrintRegular => const TextStyle(
      fontSize: 10,
      height: 1.14,
      color: Style.colorTextPrimary,
      letterSpacing: 0,
      fontWeight: regularFontWeight);
}
