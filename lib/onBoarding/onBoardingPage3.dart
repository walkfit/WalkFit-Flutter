import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walkfit/widgets/ButtonWidget.dart';
import 'package:walkfit/widgets/circleWidget.dart';

class OnBoardingPage3 extends StatelessWidget {
  const OnBoardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 131.h),
            Text(
              '사람들과 함께\n경쟁하며 달려봐요',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontVariations: const [FontVariation('wght', 500)],
                letterSpacing: -2,
              ),
            ),
            SizedBox(height: 397.h),
            Wrap(
              children: [
                CircleWidget(
                  width: 14.w,
                  height: 14.h,
                  color: const Color(0xFFEEEEEE),
                ),
                SizedBox(width: 10.w),
                CircleWidget(
                  width: 14.w,
                  height: 14.h,
                  color: const Color(0xFFEEEEEE),
                ),
                SizedBox(width: 10.w),
                CircleWidget(
                  width: 14.w,
                  height: 14.h,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
            SizedBox(height: 55.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ButtonWidget(
                text: '시작하기',
                textColor: Colors.white,
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
