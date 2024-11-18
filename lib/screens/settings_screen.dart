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
          children: [
            Text('Select Theme:', style: themeProvider.fontStyle),
            DropdownButton<int>(
              value: themeProvider.currentThemeIndex,
              onChanged: (int? newValue) {
                if (newValue != null) {
                  themeProvider.setTheme(newValue);
                }
              },
              items: [
                DropdownMenuItem(value: 0, child: Text('Theme A')),
                DropdownMenuItem(value: 1, child: Text('Theme B')),
                DropdownMenuItem(value: 2, child: Text('Theme C')),
              ],
            ),
            SizedBox(height: 20),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
