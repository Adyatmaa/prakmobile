import 'package:flutter/material.dart';

class Prak1 extends StatelessWidget {
  const Prak1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(11),
            color: Colors.red,
            child: Text(
              'hello world',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(11),
            color: Colors.red,
            child: Text(
              'hello world',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Image.asset('assets/images/Screenshot 2023-09-10 224633.png')
        ],
      ),
    );
  }
}
