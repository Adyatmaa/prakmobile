import 'package:flutter/material.dart';

class Praktikum3 extends StatelessWidget {
  const Praktikum3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            height: 214,
            width: double.infinity,
            // color: Colors.blue,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/388830/pexels-photo-388830.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'))),
          ),
          Text(
            'Farm House Lembang',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Open Everyday',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.access_time_rounded),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '09.00 - 20.00',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.monetization_on),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Rp 25.000',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            margin: EdgeInsets.all(12),
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(
              'Berada di jalur utama Bandung - Lembang. Farm House menjadi onjek wisata yang tidak pernah sepi pengungjung. Selain karena letaknya strategis, kawasan ini juga nenghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto instagramable',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
