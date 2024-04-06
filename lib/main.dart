import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hover_login_form/hover_login_page/hover_login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hover Login form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.bebasNeue().fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 242, 4),
        ).copyWith(primary: const Color.fromARGB(255, 0, 242, 4)),
        useMaterial3: true,
      ),
      home: const HoverLoginPage(),
    );
  }
}
