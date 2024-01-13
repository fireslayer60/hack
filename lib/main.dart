import 'package:flutter/material.dart';
import 'package:hack/pages/Journal.dart';
import 'package:hack/pages/loginpage.dart';
import 'package:hack/pages/mainpage.dart';
import 'package:hack/pages/sentiment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SentimentPage(),
    );
  }
}

