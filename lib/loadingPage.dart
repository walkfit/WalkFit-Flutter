import 'package:flutter/material.dart';
import 'package:walkfit/widgets/logoWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LogoWidget(fontSize: 92.sp),
      ),
    );
  }
}
