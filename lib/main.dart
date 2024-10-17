import 'package:flutter/material.dart';
import 'package:walkfit/emailLoginPage.dart';
import 'package:walkfit/joinPage.dart';
import 'package:walkfit/widgets/logoWidget.dart';
import 'package:walkfit/startPage.dart';
import 'package:walkfit/widgetTest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color.fromRGBO(33, 47, 131, 1),
      ),
      home: const Joinpage(),
    );
  }
}
