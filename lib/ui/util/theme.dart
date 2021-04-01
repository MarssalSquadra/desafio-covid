import 'package:flutter/material.dart';

class AppThemes extends MaterialColor {
  //General
  static const Color transparent = Colors.transparent;
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color yellow = Color(0xFFF4C742);
  static const Color alternateBlue = Color(0xFF5A57C3);
  static Color backGroundField = Colors.black.withAlpha(50);

  //UnNamed
  static const Color color_0xFF969AA8 = Color(0xFF969AA8);
  static const Color color_0xFFD1D0E7 = Color(0xFFD1D0E7);
  static const Color color_0xF11E2243 = Color(0xF11E2243); //F3F4F9
  static const Color color_0xFFF3F4F9 = Color(0xFFF3F4F9);
  static const Color color_0xFF2C80FF = Color(0xFF2C80FF);
  static const Color color_0xFFC7C7CC = Color(0xFFC7C7CC);
  static const Color color_0xFF5FD92B = Color(0xFF5FD92B);
  AppThemes(int primary, Map<int, Color> swatch) : super(primary, swatch);

  static const int _azulSquadra = 0xFF4461C2;

  static const MaterialColor primaryColor = MaterialColor(
    _azulSquadra,
    <int, Color>{
      50: Color(0xFFE2E2F3),
      100: Color(0xFFC5C7E7),
      200: Color(0xFF9A9CD5),
      300: Color(0xFF6F72C3),
      400: Color(0xff3F4196),
      500: Color(_azulSquadra),
      600: Color(0xFF393B88),
      700: Color(0xFF27295E),
      800: Color(0xFF1D1F46),
      900: Color(0xFF1A1C40),
    },
  );

  static const int _accentColor = 0xFFFF2665;
  static const MaterialColor accentColor = MaterialColor(
    _accentColor,
    <int, Color>{
      50: Color(0xFFFCDADA),
      100: Color(0xFFF8B4B5),
      200: Color(0xFFF58E90),
      300: Color(0xFFF2696B),
      400: Color(0xFFEF4346),
      500: Color(_accentColor),
      600: Color(0xFF830B0D),
      700: Color(0xFF5E0809),
      800: Color(0xFF4B0708),
      900: Color(0xFF380506),
    },
  );
}
