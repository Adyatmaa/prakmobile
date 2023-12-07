import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobile/prak4/model.dart';

class DetailScreen extends StatelessWidget {
  final Place plc;
  const DetailScreen({Key? key, required this.plc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 18),
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(plc.imgAsset), fit: BoxFit.fill)),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 18),
                child: Text(
                  plc.name,
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600),
                )),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    child: Column(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          plc.open,
                          style: GoogleFonts.poppins(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Column(
                      children: [
                        Icon(Icons.access_time_rounded),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          plc.jam,
                          style: GoogleFonts.poppins(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Column(
                      children: [
                        Icon(Icons.monetization_on),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          plc.harga,
                          style: GoogleFonts.poppins(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Text(
              plc.desc,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 14),
            ))
          ],
        ),
      ),
    );
  }
}
