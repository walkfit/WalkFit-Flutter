import 'package:flutter/material.dart';
import 'package:walkfit/widgets/logoWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LogoWidget(
                fontSize: 92.sp,
              )
            ],
          ),
        ],
      ),
    );
  }
}
