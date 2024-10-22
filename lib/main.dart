import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walkfit/emailLoginPage.dart';
import 'package:walkfit/accountCheckPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: const Color.fromRGBO(33, 47, 131, 1),
            fontFamily: 'PretendardVariable'),
        home: const EmailLoginPage(),
      ),
    );
  }
}
