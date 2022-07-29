import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex('#ED9728');
  static Color darkGrey = HexColor.fromHex('#525252');
  static Color grey = HexColor.fromHex('#737477');
  static Color lightGrey = HexColor.fromHex('#9E9E9E');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      // Check if it has opacity
      hexColorString = 'FF$hexColorString'; // 8 char with opaticy 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}