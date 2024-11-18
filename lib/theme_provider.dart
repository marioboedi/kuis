import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  // Default Theme (Sky High)
  ThemeData _themeData = ThemeData(
    primarySwatch: Colors.indigo,
    scaffoldBackgroundColor: Colors.indigo[50],
    textTheme: TextTheme(bodyMedium: GoogleFonts.roboto()),
  );

  // Default Font Style
  TextStyle _fontStyle = GoogleFonts.roboto();

  int currentThemeIndex = 0;
  int currentFontIndex = 0;

  ThemeData get themeData => _themeData;
  TextStyle get fontStyle => _fontStyle;

  // Method to change theme
  void setTheme(int themeIndex) {
    currentThemeIndex = themeIndex;

    if (themeIndex == 1) {
      _themeData = ThemeData(
        primarySwatch: Colors.teal, // Forest Whisper
        scaffoldBackgroundColor: Colors.teal[50],
        textTheme: TextTheme(bodyMedium: GoogleFonts.roboto()),
      );
    } else if (themeIndex == 2) {
      _themeData = ThemeData(
        primarySwatch: Colors.orange, // Sunset Glow
        scaffoldBackgroundColor: Colors.orange[50],
        textTheme: TextTheme(bodyMedium: GoogleFonts.roboto()),
      );
    } else if (themeIndex == 3) {
      _themeData = ThemeData(
        primarySwatch: Colors.purple, // Mystic Violet
        scaffoldBackgroundColor: Colors.purple[50],
        textTheme: TextTheme(bodyMedium: GoogleFonts.roboto()),
      );
    } else if (themeIndex == 4) { // Midnight Bliss
      _themeData = ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(bodyMedium: GoogleFonts.roboto(color: Colors.white)),
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
      );
    } else {
      _themeData = ThemeData(
        primarySwatch: Colors.indigo, // Sky High
        scaffoldBackgroundColor: Colors.indigo[50],
        textTheme: TextTheme(bodyMedium: GoogleFonts.roboto()),
      );
    }
    notifyListeners();
  }

  // Method to change font using GoogleFonts
  void setFont(int fontIndex) {
    currentFontIndex = fontIndex;

    if (fontIndex == 1) {
      _fontStyle = GoogleFonts.lobster(); // Fancy Lobster
    } else if (fontIndex == 2) {
      _fontStyle = GoogleFonts.montserrat(); // Classic Elegance
    } else if (fontIndex == 3) {
      _fontStyle = GoogleFonts.poppins(); // Modern Touch
    } else {
      _fontStyle = GoogleFonts.roboto(); // Smooth Robot
    }
    notifyListeners();
  }
}
