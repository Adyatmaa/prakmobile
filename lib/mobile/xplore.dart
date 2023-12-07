import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style:
                  GoogleFonts.inter(fontSize: 48, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: Text(
                'Here you can explore our most popular and recommended locations.',
                style: GoogleFonts.inter(fontSize: 14, color: Colors.grey),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
