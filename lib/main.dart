import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/modules/auth/intro/views/intro_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins(color: Colors.white).fontFamily,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Color(0xFFFF6E40),
      ),
      home: IntroView(),
    );
  }
}
