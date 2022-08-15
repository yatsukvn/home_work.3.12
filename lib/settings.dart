import 'package:flutter/material.dart';

class Settings {
  static Color get background => const Color.fromARGB(255, 244, 67, 54);
  static Color get itemBackground => const Color.fromARGB(255, 229, 115, 115);
  static TextStyle get extraWeatherDetailItemTextStyle => const TextStyle(
        color: Colors.white,
        fontSize: 22.0,
        fontWeight: FontWeight.w200,
      );
  static TextStyle get weatherDayOfWeekDetail => const TextStyle(
        color: Colors.white,
        fontSize: 26.0,
        fontWeight: FontWeight.w200,
      );
}
