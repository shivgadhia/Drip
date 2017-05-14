import 'package:flutter/material.dart';

final ThemeData DripTheme = new ThemeData(
    brightness: Brightness.dark,
    primarySwatch: DripColors.darkBlue,
    accentColor: const Color(0xFF9B9BA2)
);


class DripColors {
  DripColors._();

  static const MaterialColor darkBlue = const MaterialColor(
      _darkbluePrimaryValue, const <int, Color>{
    50: const Color(0xffe7e7e9),
    100: const Color(0xffc3c3c7),
    200: const Color(0xff9b9ba2),
    300: const Color(0xff72737c),
    400: const Color(0xff545560),
    500: const Color(_darkbluePrimaryValue),
    600: const Color(0xff30313e),
    700: const Color(0xff292a35),
    800: const Color(0xff22232d),
    900: const Color(0xff16161f)
  });

  static const int _darkbluePrimaryValue = 0xff363744;
}

class DripStyle extends TextStyle {
  const DripStyle.josefin(double size, FontWeight weight, Color color)
      : super(inherit: false,
      color: color,
      fontFamily: 'Josefin',
      fontSize: size,
      fontWeight: weight,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 2.0);

}

TextStyle josefinRegular24(Color color) =>
    new DripStyle.josefin(20.0, FontWeight.normal, color);


final TextStyle appBarTitleStyle = josefinRegular24(DripColors.darkBlue[50]);