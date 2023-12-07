import 'package:flutter/material.dart';
import 'package:prakmobile/prak4/mainscr.dart';
import 'package:prakmobile/prak4/praktikum4%20copy.dart';
import 'package:prakmobile/prak4/praktikum4.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mainscr(),
    );
  }
}
