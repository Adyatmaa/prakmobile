import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobile/mobile/xplore.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Color.fromARGB(245, 234, 234, 234),
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: Colors.grey[50]),
            padding: EdgeInsets.symmetric(horizontal: 12),
            width: double.infinity,
            height: 700,
            child: Column(
              children: [
                SizedBox(
                  height: 64,
                ),
                Text(
                  'Hey There!',
                  style: GoogleFonts.inter(fontSize: 28),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  width: double.infinity,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue, turpis sit amet placerat dictum, felis quam posuere erat, vitae lobortis turpis dolor sit amet ex. Nullam porta efficitur elit sed dapibus.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 260,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 280,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 52,
                                width: 126,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(40)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.track_changes_rounded),
                                    Text('Trekking')
                                  ],
                                )),
                            Container(
                                height: 52,
                                width: 126,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(40)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.track_changes_rounded),
                                    Text('Shooting')
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                        width: 320,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 52,
                                width: 146,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(40)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.track_changes_rounded),
                                    Text('Sunbathing')
                                  ],
                                )),
                            Container(
                                height: 52,
                                width: 140,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(40)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.track_changes_rounded),
                                    Text('Wandering')
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                        width: 280,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 52,
                                width: 120,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(40)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.track_changes_rounded),
                                    Text('Eating')
                                  ],
                                )),
                            Container(
                                height: 52,
                                width: 140,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(40)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.track_changes_rounded),
                                    Text('Swimming')
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 52,
                                width: 120,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(40)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.track_changes_rounded),
                                    Text('Surfing')
                                  ],
                                )),
                            Container(
                                height: 52,
                                width: 146,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(40)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.track_changes_rounded),
                                    Text('Sightseeing')
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return Explore();
                        },
                      ));
                    },
                    child: Text(
                      'CONTINUE',
                      style:
                          GoogleFonts.inter(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 200,
                  child: Text(
                    'Skip for now',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            height: 1400,
            child: CircleAvatar(
              radius: 38,
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              child: Icon(
                Icons.waving_hand_rounded,
                size: 32,
                color: Colors.yellow.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
