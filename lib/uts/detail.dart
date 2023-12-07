import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobile/uts/gunung.dart';

class DetailScreen extends StatelessWidget {
  final Gunung gunung;
  const DetailScreen({Key? key, required this.gunung});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          gunung.nama,
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade300,
          height: 1400,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 24),
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(gunung.img), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(12)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 8, top: 4),
                      child: Text(
                        'Detail Info',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 4),
                        width: double.infinity,
                        child: Text(
                          'Lokasi Gunung : ',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 4),
                        padding: EdgeInsets.only(left: 14),
                        width: double.infinity,
                        child: Text(
                          gunung.kota,
                          style: GoogleFonts.poppins(fontSize: 14),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 4),
                        width: double.infinity,
                        child: Text(
                          'Bentuk Gunung : ',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )),
                    Container(
                        padding: EdgeInsets.only(left: 14),
                        margin: EdgeInsets.only(bottom: 4),
                        width: double.infinity,
                        child: Text(
                          gunung.bentuk,
                          style: GoogleFonts.poppins(fontSize: 14),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 4),
                        width: double.infinity,
                        child: Text(
                          'Geolokasi : ',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )),
                    Container(
                        padding: EdgeInsets.only(left: 14),
                        margin: EdgeInsets.only(bottom: 4),
                        width: double.infinity,
                        child: Text(
                          gunung.geolokasi,
                          style: GoogleFonts.poppins(fontSize: 14),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 4),
                        width: double.infinity,
                        child: Text(
                          'Letusan Terakhir : ',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )),
                    Container(
                        padding: EdgeInsets.only(left: 14),
                        margin: EdgeInsets.only(bottom: 4),
                        width: double.infinity,
                        child: Text(
                          gunung.estimasi_letusan_terakhir,
                          style: GoogleFonts.poppins(fontSize: 14),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 8, top: 4),
                      child: Text(
                        'Deskripsi',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 4),
                        width: double.infinity,
                        child: Text(
                          gunung.desc,
                          style: GoogleFonts.poppins(fontSize: 14),
                          textAlign: TextAlign.justify,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
