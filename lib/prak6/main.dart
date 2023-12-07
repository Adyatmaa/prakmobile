import 'package:flutter/material.dart';
import 'package:prakmobile/prak6/prak6.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Prak6(),
      debugShowCheckedModeBanner: false,
    );
  }
}
