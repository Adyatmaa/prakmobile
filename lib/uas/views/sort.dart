import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobile/uas/viewmodel/fetch_gunung.dart';
import 'package:prakmobile/uas/views/detail.dart';
import 'package:prakmobile/uas/views/login.dart';
import 'package:prakmobile/uas/views/profile.dart';
import 'package:prakmobile/uas/views/home.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class SortPage extends StatefulWidget {
  const SortPage({super.key});

  @override
  State<SortPage> createState() => _SortPageState();
}

class _SortPageState extends State<SortPage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Repository repo = Repository();
  late bool aktif;
  late bool deaktif;

  int _botnavInd = 1;
  @override
  void initState() {
    super.initState();
    aktif = true;
    deaktif = false;
  }

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.home_outlined,
      Icons.filter_alt_outlined,
      Icons.person_3_outlined,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text(
          'Sort by Status',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            child: IconButton(
                onPressed: () {
                  _auth.signOut();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Anda telah logout'),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.red,
                  ));
                },
                icon: Icon(Icons.logout)),
          ),
          SizedBox(
            width: 12,
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 12, bottom: 12, right: 32, left: 32),
              // height: 620,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 120,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade800,
                      ),
                      child: Center(
                          child: Text(
                        'Aktif',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade300,
                        ),
                      )),
                    ),
                    onTap: () {
                      setState(() {
                        aktif = true;
                        deaktif = false;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: 120,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade800,
                      ),
                      child: Center(
                          child: Text(
                        'Tidak Aktif',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade300,
                        ),
                      )),
                    ),
                    onTap: () {
                      setState(() {
                        aktif = false;
                        deaktif = true;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 572,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: FutureBuilder<List<dynamic>>(
                future: repo.fetchData(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    List<dynamic> filteredData = snapshot.data!
                        .where((gunung) =>
                            (aktif && gunung.status == 'Aktif') ||
                            (deaktif && gunung.status != 'Aktif'))
                        .toList();
                    return ListView.builder(
                      itemCount: filteredData.length,
                      itemBuilder: (BuildContext context, int index) {
                        var gunung = filteredData[index];
                        return Container(
                          color: Colors.grey.shade300,
                          width: double.infinity,
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return DetailScr(gunung: gunung);
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image:
                                                    NetworkImage(gunung.img))),
                                      ),
                                      Container(
                                        // alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 12),
                                        height: 72,
                                        width: 220,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Nama : ' + gunung.nama,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 1,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              'Tinggi: ' + gunung.tinggiMeter,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14),
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
                      },
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _botnavInd,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ));
              break;
            // case 1:
            //   Navigator.pushReplacement(context, MaterialPageRoute(
            //     builder: (context) {
            //       return ProfilePage();
            //     },
            //   ));
            //   break;
            case 2:
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return ProfilePage();
                },
              ));
              break;
            default:
          }
        },
        gapLocation: GapLocation.none,
        activeColor: Colors.blue,
      ),
    );
  }
}
