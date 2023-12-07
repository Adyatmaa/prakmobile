import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobile/uas/views/home.dart';
import 'package:prakmobile/uas/views/login.dart';
import 'package:prakmobile/uas/views/sort.dart';

// ignore: must_be_immutable
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? _currentUser;
  int _botnavInd = 2;

  @override
  void initState() {
    super.initState();
    _currentUser = _auth.currentUser;
  }

  String getName(String email) {
    return email.split('@')[0];
  }

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
          'Profile',
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
        color: Colors.grey.shade300,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 32),
              width: double.infinity,
              // height: 100,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundColor: Colors.blue,
                    foregroundImage: NetworkImage(
                        'https://images.pexels.com/photos/906531/pexels-photo-906531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          'Fungsi ini belum tersedia',
                          style: GoogleFonts.plusJakartaSans(),
                        ),
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.red,
                      ));
                    },
                    child: Text(
                      'Ubah foto profil',
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 23, 25, 28)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(bottom: 16),
              width: double.infinity,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 24),
              child: Row(
                children: [
                  Text(
                    'Info Profile',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 45, 51, 57)),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Text(
                          'Nama  ',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 68, 76, 85)),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: Text(
                          getName(_currentUser?.email ?? ''),
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 23, 25, 28)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              'Fungsi ini belum tersedia',
                              style: GoogleFonts.plusJakartaSans(),
                            ),
                            duration: Duration(seconds: 1),
                            backgroundColor: Colors.red,
                          ));
                        },
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Text(
                          'Email  ',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 68, 76, 85)),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: Text(
                          _currentUser?.email ?? '',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 23, 25, 28)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              'Fungsi ini belum tersedia',
                              style: GoogleFonts.plusJakartaSans(),
                            ),
                            duration: Duration(seconds: 1),
                            backgroundColor: Colors.red,
                          ));
                        },
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        child: Text(
                          'Nomor HP',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 68, 76, 85)),
                        ),
                      ),
                      Container(
                        width: 180,
                        child: Text(
                          '+628776421909976',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 23, 25, 28)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Fungsi ini belum tersedia',
                                style: GoogleFonts.plusJakartaSans(),
                              ),
                              duration: Duration(seconds: 1),
                              backgroundColor: Colors.red,
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blueAccent,
      //   child: Icon(Icons.add_rounded),
      //   onPressed: () {
      //     print('object2');
      //   },
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
            case 1:
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return SortPage();
                },
              ));
              break;
            // case 2:
            //   Navigator.pushReplacement(context, MaterialPageRoute(
            //     builder: (context) {
            //       return ProfilePage();
            //     },
            //   ));
            //   break;
            default:
          }
        },
        gapLocation: GapLocation.none,
        activeColor: Colors.blue,
      ),
    );
  }
}
