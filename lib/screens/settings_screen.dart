import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';

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
            // Header Tema
            Text(
              'Choose Your Theme:',
              style: themeProvider.fontStyle.copyWith(fontSize: 18),
            ),
            SizedBox(height: 10),

            // Pilihan Tema dengan ListTile
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.indigo),
              title: Text('Sky High (Indigo)', style: themeProvider.fontStyle),
              trailing: Icon(Icons.check, color: themeProvider.currentThemeIndex == 0 ? Colors.indigo : Colors.grey),
              onTap: () => themeProvider.setTheme(0),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.teal),
              title: Text('Forest Whisper (Teal)', style: themeProvider.fontStyle),
              trailing: Icon(Icons.check, color: themeProvider.currentThemeIndex == 1 ? Colors.teal : Colors.grey),
              onTap: () => themeProvider.setTheme(1),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.orange),
              title: Text('Sunset Glow (Orange)', style: themeProvider.fontStyle),
              trailing: Icon(Icons.check, color: themeProvider.currentThemeIndex == 2 ? Colors.orange : Colors.grey),
              onTap: () => themeProvider.setTheme(2),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.purple),
              title: Text('Mystic Violet (Purple)', style: themeProvider.fontStyle),
              trailing: Icon(Icons.check, color: themeProvider.currentThemeIndex == 3 ? Colors.purple : Colors.grey),
              onTap: () => themeProvider.setTheme(3),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text('Midnight Bliss (Dark)', style: themeProvider.fontStyle.copyWith(color: Colors.white)),
              trailing: Icon(Icons.check, color: themeProvider.currentThemeIndex == 4 ? Colors.white : Colors.grey),
              onTap: () => themeProvider.setTheme(4),
            ),

            SizedBox(height: 20),

            // Header Font
            Text(
              'Select Your Font:',
              style: themeProvider.fontStyle.copyWith(fontSize: 18),
            ),
            SizedBox(height: 10),

            // Pilihan Font dengan Wrap
            Wrap(
              spacing: 8.0, // Jarak horizontal antar tombol
              runSpacing: 8.0, // Jarak vertical antar tombol jika berpindah baris
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: themeProvider.currentFontIndex == 0 ? Colors.indigo : Colors.grey[300],
                  ),
                  onPressed: () => themeProvider.setFont(0),
                  child: Text('Roboto', style: GoogleFonts.roboto(fontSize: 16)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: themeProvider.currentFontIndex == 1 ? Colors.teal : Colors.grey[300],
                  ),
                  onPressed: () => themeProvider.setFont(1),
                  child: Text('Lobster', style: GoogleFonts.lobster(fontSize: 16)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: themeProvider.currentFontIndex == 2 ? Colors.orange : Colors.grey[300],
                  ),
                  onPressed: () => themeProvider.setFont(2),
                  child: Text('Montserrat', style: GoogleFonts.montserrat(fontSize: 16)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: themeProvider.currentFontIndex == 3 ? Colors.purple : Colors.grey[300],
                  ),
                  onPressed: () => themeProvider.setFont(3),
                  child: Text('Poppins', style: GoogleFonts.poppins(fontSize: 16)),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Kalimat untuk Mengecek Font
            Text(
              'Mario Samuel Budiono (535230091)',
              style: themeProvider.fontStyle.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
