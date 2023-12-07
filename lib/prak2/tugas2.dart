import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tugas extends StatelessWidget {
  const Tugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text('Profile'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/foto1.jpeg'),
              radius: 80,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adyatma Abidin',
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    '210605110109',
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Praktikum Pemrograman Mobile - F',
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
