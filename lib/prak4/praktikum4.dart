import 'package:flutter/material.dart';
import 'package:prakmobile/prak4/detail.dart';
import 'package:prakmobile/prak4/model.dart';

class Praktikum4 extends StatelessWidget {
  Praktikum4({super.key});

  final PLace = PlaceList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo'),
      ),
      body: ListView.separated(
        itemCount: PlaceList.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Container(
                child: Row(
              children: [
                Container(
                    width: 130,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(PlaceList[index].imgAsset)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 12, top: 12),
                        child: Text(PlaceList[index].name)),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 12, top: 12),
                        child: Text(PlaceList[index].kota)),
                  ],
                )
              ],
            )),
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            color: Colors.blueAccent,
          );
        },
      ),
    );
  }
}
