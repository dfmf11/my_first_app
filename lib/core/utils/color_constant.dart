import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#787b80');

  static Color gray400 = fromHex('#c7c7c7');

  static Color deepOrangeA200 = fromHex('#ff6d3f');

  static Color blueGray100 = fromHex('#d9d8d7');

  static Color gray500 = fromHex('#a8a8a8');

  static Color gray60001 = fromHex('#777777');

  static Color red600 = fromHex('#ef3546');

  static Color blueGray10001 = fromHex('#d9d9d9');

  static Color gray900 = fromHex('#17161c');

  static Color gray100 = fromHex('#f5f4f6');

  static Color black90001 = fromHex('#000000');

  static Color black900 = fromHex('#020000');

  static Color gray40001 = fromHex('#b1b1b0');

  static Color gray40002 = fromHex('#bfbfbf');

  static Color deepOrange600 = fromHex('#ee5b26');

  static Color bluegray400 = fromHex('#888888');

  static Color gray40003 = fromHex('#b1b1b1');

  static Color gray50001 = fromHex('#aaadaf');

  static Color black901 = fromHex('#000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color redA700 = fromHex('#ff0000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
