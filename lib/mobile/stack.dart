import 'package:flutter/material.dart';

class St extends StatelessWidget {
  const St({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue,
        ),
        Container(
          height: 700,
          width: double.infinity,
          color: Colors.green,
        ),
        Positioned(
          bottom: 600,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: Colors.white,
          ),
        )
      ]),
    );
  }
}
