import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobile/uas/viewmodel/fetch_gunung.dart';
import 'package:prakmobile/uas/views/detail.dart';
import 'package:prakmobile/uas/views/login.dart';
import 'package:prakmobile/uas/views/sort.dart';
import 'package:prakmobile/uas/views/profile.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Repository repo = Repository();
  final int _botnavInd = 0;
  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.home_outlined,
      Icons.filter_alt_outlined,
      Icons.person_3_outlined,
    ];
    final List<String> imgList = [
      'https://cdns.klimg.com/merdeka.com/i/w/news/2022/06/18/1445165/540x270/6-wisata-gunung-kelud-yang-indah-dan-menakjubkan-wajib-dikunjungi.jpg',
      'https://tahurarsoerjo.dishut.jatimprov.go.id/images/owa/arjuno/img-03.png',
      'https://akcdn.detik.net.id/visual/2021/12/09/gunung-semeru-2_43.jpeg',
      'https://asset-2.tstatic.net/gayo/foto/bank/images/Gunung-Geureudong-di-Bener-Meriah.jpg',
      'https://indoraya.news/wp-content/uploads/2022/08/gunung-agung.jpg',
      'https://kwriu.kemdikbud.go.id/wp-content/uploads/2017/04/Rinjani-742x440.jpg',
      'https://asset.kompas.com/crops/JAI-OD0Mk6a-48b4PyQs1v72RFY=/0x0:739x493/750x500/data/photo/2020/03/20/5e74a47552a87.jpg',
      'https://media.sukabumiupdate.com/media/2023/05/13/1683951155_645f0e33de956_SgycRIq0HQgWYntIsWlk.webp',
      'https://asset.kompas.com/crops/RR_Lb6Xtcav7TMWFp8PGuZEbRCE=/91x0:848x505/750x500/data/photo/2022/06/27/62b9454f2deff.jpg',
      'https://www.nativeindonesia.com/foto/2022/06/gunung-slamet.jpg',
      'https://images.tokopedia.net/img/KRMmCm/2022/6/23/b0cb194f-406d-422b-a3df-122234cd80fc.jpg',
      'https://images.tokopedia.net/blog-tokopedia-com/uploads/2018/10/merbabu-.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/9/9d/Mount_Merapi_in_2014.jpg',
      'https://salsawisata.com/wp-content/uploads/2023/01/125314788_1722478827914376_7431535581040524253_n-PhotoRoom.jpg',
      'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/07/02/3800773254.jpg',
    ];
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Container(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(item),
                ),
              ),
            ),
          ),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text(
          'Gundo',
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
        width: double.infinity,
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 32,
              margin: EdgeInsets.only(top: 12),
              padding: EdgeInsets.symmetric(horizontal: 12),
              // color: Colors.blueGrey,
              child: Text(
                'List Gunung Berapi',
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // padding: EdgeInsets.only(top: 12),
              height: 406,
              width: double.infinity,
              child: FutureBuilder<List<dynamic>>(
                future: repo.fetchData(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        var gunung = snapshot.data![index];
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
            // case 0:
            //   Navigator.pushReplacement(context, MaterialPageRoute(
            //     builder: (context) {
            //       return HomeScreen();
            //     },
            //   ));
            //   break;
            case 1:
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return SortPage();
                },
              ));
              break;
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
