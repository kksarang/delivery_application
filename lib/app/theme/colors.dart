import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryRed = Color(0xffE23744);
  static Color primaryRedSub = const Color(0xffE23744).withOpacity(0.15);
  static Color primaryRedBorder = const Color(0xffE23744).withOpacity(0.7);

  ///Text colors
  static const Color textHighest = Color(0xff171A1E);
  static const Color textHigh = Color(0xff40444B);
  static const Color textMedium = Color(0xff656A6D);
  static const Color textLow = Color(0xff8E9091);

  ///
  static const MaterialColor materialPrimary = MaterialColor(
    0xffE23744,
    <int, Color>{
      50: Color(0xffE23744),
      100: Color(0xffE23744),
      200: Color(0xffE23744),
      300: Color(0xffE23744),
      400: Color(0xffE23744),
      500: Color(0xffE23744),
      600: Color(0xffE23744),
      700: Color(0xffE23744),
      800: Color(0xffE23744),
      900: Color(0xffE23744),
    },
  );
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
