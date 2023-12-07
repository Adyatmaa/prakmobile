import 'package:flutter/material.dart';
import 'package:prakmobile/mobile/index.dart';
import 'package:prakmobile/mobile/stack.dart';

void main(){
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Index(),
    );
  }
}