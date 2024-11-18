import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: themeProvider.fontStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown untuk Tema
            Text('Select Theme:', style: themeProvider.fontStyle),
            DropdownButton<int>(
              value: themeProvider.currentThemeIndex,
              onChanged: (int? newValue) {
                if (newValue != null) {
                  themeProvider.setTheme(newValue);
                }
              },
              items: [
                DropdownMenuItem(value: 0, child: Text('Blue')),
                DropdownMenuItem(value: 1, child: Text('Green')),
                DropdownMenuItem(value: 2, child: Text('Red')),
                DropdownMenuItem(value: 3, child: Text('Yellow')),
                DropdownMenuItem(value: 4, child: Text('Dark')),
              ],
            ),
            SizedBox(height: 20),

            // Dropdown untuk Font
            Text('Select Font:', style: themeProvider.fontStyle),
            DropdownButton<int>(
              value: themeProvider.currentFontIndex,
              onChanged: (int? newValue) {
                if (newValue != null) {
                  themeProvider.setFont(newValue);
                }
              },
              items: [
                DropdownMenuItem(value: 0, child: Text('Roboto')),
                DropdownMenuItem(value: 1, child: Text('Lobster')),
                DropdownMenuItem(value: 2, child: Text('Montserrat')),
                DropdownMenuItem(value: 3, child: Text('Poppins')),
              ],
            ),
            SizedBox(height: 20),

            // Kalimat untuk mengecek fungsi font
            Text(
              'MARIO SAMUEL BUDIONO - 535230091.',
              style: themeProvider.fontStyle.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
