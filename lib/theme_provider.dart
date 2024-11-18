import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  // Default Theme (Sky High)
  ThemeData _themeData = ThemeData(
    primarySwatch: Colors.indigo,
    scaffoldBackgroundColor: Colors.indigo[50],
    textTheme: TextTheme(bodyMedium: GoogleFonts.pacifico()), // Ganti Roboto ke Pacifico
  );

  // Default Font Style
  TextStyle _fontStyle = GoogleFonts.pacifico(); // Ganti Roboto ke Pacifico

  int currentThemeIndex = 0;
  int currentFontIndex = 0;

  ThemeData get themeData => _themeData;
  TextStyle get fontStyle => _fontStyle;

  // Method to change theme
  void setTheme(int themeIndex) {
    currentThemeIndex = themeIndex;

    if (themeIndex == 1) {
      _themeData = ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.teal[50],
        textTheme: TextTheme(bodyMedium: GoogleFonts.pacifico()),
      );
    } else if (themeIndex == 2) {
      _themeData = ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.orange[50],
        textTheme: TextTheme(bodyMedium: GoogleFonts.pacifico()),
      );
    } else if (themeIndex == 3) {
      _themeData = ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.purple[50],
        textTheme: TextTheme(bodyMedium: GoogleFonts.pacifico()),
      );
    } else if (themeIndex == 4) { // Dark Theme
      _themeData = ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(bodyMedium: GoogleFonts.pacifico(color: Colors.white)),
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
      );
    } else {
      _themeData = ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.indigo[50],
        textTheme: TextTheme(bodyMedium: GoogleFonts.pacifico()),
      );
    }
    notifyListeners();
  }

  // Method to change font using GoogleFonts
  void setFont(int fontIndex) {
    currentFontIndex = fontIndex;

    if (fontIndex == 0) {
      _fontStyle = GoogleFonts.pacifico(); // Ganti Roboto ke Pacifico
    } else if (fontIndex == 1) {
      _fontStyle = GoogleFonts.lobster();
    } else if (fontIndex == 2) {
      _fontStyle = GoogleFonts.sedgwickAve(); // Ganti Montserrat ke Sedgwick Ave
    } else if (fontIndex == 3) {
      _fontStyle = GoogleFonts.poppins();
    }
    notifyListeners();
  }
}
