import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prakmobile/prak8/reg.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyDuNYCTeTZy3yLA53usHoR9rGavy2bjK3Q',
          appId: '1:364296449748:android:f0b3bdb268418922e81541',
          messagingSenderId: '364296449748',
          projectId: 'gundo-apis'));

  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Register(),
      debugShowCheckedModeBanner: false,
    );
  }
}
