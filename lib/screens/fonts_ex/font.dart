import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontScreen extends StatefulWidget {
  const FontScreen({super.key});

  @override
  State<FontScreen> createState() => _FontScreenState();
}

class _FontScreenState extends State<FontScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello World",
              style: GoogleFonts.acme(fontSize: 50, color: Colors.amber),
            ),
            Text(
              'This is Google Fonts',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Colors.blue,
                  letterSpacing: .5,
                ),
              ),
            ),
            const Text(
              "Shubham Phad",
              style: TextStyle(
                fontFamily: 'GoogleSans',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
