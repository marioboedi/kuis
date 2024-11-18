import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  // Default Theme A
  ThemeData _themeData = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
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
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.green[50],
        textTheme: TextTheme(bodyMedium: GoogleFonts.roboto()),
      );
    } else if (themeIndex == 2) {
      _themeData = ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.red[50],
        textTheme: TextTheme(bodyMedium: GoogleFonts.roboto()),
      );
    } else {
      _themeData = ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(bodyMedium: GoogleFonts.roboto()),
      );
    }
    notifyListeners();
  }

  // Method to change font using GoogleFonts
  void setFont(int fontIndex) {
    currentFontIndex = fontIndex;

    if (fontIndex == 1) {
      _fontStyle = GoogleFonts.lobster();
    } else if (fontIndex == 2) {
      _fontStyle = GoogleFonts.montserrat();
    } else {
      _fontStyle = GoogleFonts.roboto();
    }
    notifyListeners();
  }
}
