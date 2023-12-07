import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobile/uts/detail.dart';
import 'package:prakmobile/uts/gunung.dart';

class Homescr extends StatelessWidget {
  const Homescr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'List Gunung Berapi Indonesia',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: GundoList.map((gun) {
          return Container(
            color: Colors.grey.shade300,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DetailScreen(gunung: gun);
                      },
                    ));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 72,
                          decoration: BoxDecoration(
                              // color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(gun.img))),
                        ),
                        Container(
                          // alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 12),
                          height: 72,
                          width: 220,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nama : ' + gun.nama,
                                style: GoogleFonts.poppins(fontSize: 14),
                              ),
                              Container(
                                width: double.infinity,
                                height: 1,
                                color: Colors.grey,
                              ),
                              Text(
                                'Tinggi: ' + gun.tinggi_meter,
                                style: GoogleFonts.montserrat(fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
