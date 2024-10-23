import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walkfit/widgets/buttonWidget.dart';

class DetailInputPage extends StatelessWidget {
  const DetailInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 179.h),
            Text(
              '반가워요 👋\n워크핏에 오신걸 환영해요',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontWeight: FontWeight.w500,
                height: 1.3.h,
              ),
            ),
            Text(
              '이용을 위해 아래의 내용을 변경해주세요',
              style: TextStyle(
                color: const Color(0xFF8B8B8B),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: -1,
              ),
            ),
            SizedBox(height: 31.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 28.h),
              width: double.infinity,
              height: 358.h,
              decoration: const BoxDecoration(
                color: Color(0x19777777),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '신장',
                    style: TextStyle(
                      color: const Color(0xFFAFAFAF),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.4,
                    ),
                  ),
                  SizedBox(height: 86.h),
                  Text(
                    '체중',
                    style: TextStyle(
                      color: const Color(0xFFAFAFAF),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.4,
                    ),
                  ),
                  SizedBox(height: 86.h),
                  Text(
                    '성별',
                    style: TextStyle(
                      color: const Color(0xFFAFAFAF),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.4,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 88.h),
            ButtonWidget(
              text: '시작하기',
              textColor: const Color(0xFFF0F0F0),
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
