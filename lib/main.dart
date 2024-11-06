import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:intl/date_symbol_data_local.dart';
import 'package:walkfit/home/attendanceCheckPage.dart';
=======
import 'package:walkfit/detailInputPage.dart';
import 'package:walkfit/emailLoginPage.dart';
import 'package:walkfit/accountCheckPage.dart';
import 'package:walkfit/joinPage.dart';
import 'package:walkfit/myPage.dart';
import 'package:walkfit/onBoarding/onBoardingPage1.dart';
import 'package:walkfit/onBoarding/onBoardingPage2.dart';
import 'package:walkfit/onBoarding/onBoardingPage3.dart';
>>>>>>> develop

void main() async {
  await initializeDateFormatting();
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
          fontFamily: 'PretendardVariable',
        ),
<<<<<<< HEAD
        home: const AttendanceCheckPage(),
=======
        home: const MyPage(),
>>>>>>> develop
      ),
    );
  }
}
