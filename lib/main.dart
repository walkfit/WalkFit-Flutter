import 'package:flutter/material.dart';
import 'package:walkfit/emailLoginPage.dart';
import 'package:walkfit/logo.dart';
import 'package:walkfit/startPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: const Color.fromRGBO(33, 47, 131, 1),
          fontFamily: 'PretendardVariable'),
      home: const EmailLoginPage(),
    );
  }
}
