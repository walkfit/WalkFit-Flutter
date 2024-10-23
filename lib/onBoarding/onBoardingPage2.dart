import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walkfit/widgets/buttonWidget.dart';
import 'package:walkfit/widgets/circleWidget.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 131.h),
          Text(
            '동네 친구들과 함께\n코스를 공유해요',
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
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(width: 10.w),
              CircleWidget(
                width: 14.w,
                height: 14.h,
                color: const Color(0xFFEEEEEE),
              ),
            ],
          ),
          SizedBox(height: 55.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const ButtonWidget(
              text: '다음으로',
              textColor: Color(0xFF5E6FD3),
              backgroundColor: Color(0xFFD4D9FA),
            ),
          ),
        ],
      ),
    );
  }
}
