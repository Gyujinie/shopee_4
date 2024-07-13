import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopee4/firebase_option.dart';
import 'package:shopee4/login_page.dart';
import 'package:shopee4/home_page.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopee Login',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}
