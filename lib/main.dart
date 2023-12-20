import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/colors/colors.dart';
import 'presentation/main_page/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        backgroundColor: backgroundColor,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: MainScreen(),
    );
  }
}