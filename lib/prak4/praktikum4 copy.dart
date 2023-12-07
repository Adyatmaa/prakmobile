// import 'dart:js_util';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prakmobile/prak4/photo.dart';

class Praktikum4a extends StatelessWidget {
  const Praktikum4a({super.key});
  // final List<int> num = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  Future<List<Photo>> getData() async {
    var dio = new Dio();
    var pic = await dio
        .get('https://pixabay.com/api/?key=39648182-71b47de7c9420a56ef7962404');

    // print('object');
    List<Photo> listpic =
        (pic.data["hits"] as List).map((e) => Photo.fromJason(e)).toList();
    return listpic;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo'),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Text('Error');
            } else {
              return Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                          child: Row(
                        children: [
                          Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)),
                              child: Image.network('${snapshot.data?[i].img}')),
                          Container(
                            width: 240,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 12, top: 12),
                                    child: Text('${snapshot.data?[i].type}')),
                                Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 12, top: 12),
                                    child: Text(
                                      '${snapshot.data?[i].tags}',
                                    )),
                              ],
                            ),
                          ),
                        ],
                      )),
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
