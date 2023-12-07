import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Prak6 extends StatefulWidget {
  const Prak6({super.key});

  @override
  State<Prak6> createState() => _Prak6State();
}

class _Prak6State extends State<Prak6> {
  var jsonList;
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      var response = await Dio()
          .get('https://protocoderspoint.com/jsondata/superheros.json');
      if (response.statusCode == 200) {
        setState(() {
          jsonList = response.data['superheros'] as List;
        });
      }
      print(jsonList);
    } catch (e) {
      print('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
            itemCount: jsonList == null?0 : jsonList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            // fit: BoxFit.cover,
                            image: NetworkImage(jsonList[index]['url']))),
                  ),
                  title: Text(jsonList[index]['name']),
                  subtitle: Text(jsonList[index]['power']),
                ),
              );
            }),
      ),
    );
  }
}
