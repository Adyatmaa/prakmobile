import 'package:flutter/material.dart';
import 'package:prakmobile/prak2/praktikum2.dart';
import 'package:prakmobile/prak2/tugas2.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tugas(),
    );
  }
}