import 'package:flutter/material.dart';
import 'package:prakmobile/prak4/detail.dart';
import 'package:prakmobile/prak4/model.dart';

class Mainscr extends StatelessWidget {
  const Mainscr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo'),
      ),
      body: ListView(
        children: PlaceList.map((plc) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(plc: plc);
                },
              ));
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Container(
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset(plc.imgAsset)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 12),
                            child: Text(plc.name)),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 12, top: 12),
                            child: Text(plc.kota)),
                      ],
                    )
                  ],
                )),
          );
        }).toList(),
      ),
    );
  }
}
