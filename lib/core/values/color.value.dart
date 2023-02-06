import 'package:flutter/material.dart';

LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Colors.orange.shade400,
      Colors.orange.shade900,
    ],
    stops: const [0.0, 1.0],
    tileMode: TileMode.repeated);

Color primaryStatusBarColor = Colors.orange.shade700;
Color primaryColor = Color(0xFFFF6E40);
