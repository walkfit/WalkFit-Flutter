import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/widgets/appBarWidget.dart';

class AttendanceCheckPage extends StatelessWidget {
  const AttendanceCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(58.h),
        child: const AppBarWidget(title: '출석체크'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 52.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '알람 설정',
                      style: TextStyle(
                        color: const Color(0xFFA3A3A3),
                        fontSize: 14.sp,
                        fontVariations: const [FontVariation('wght', 500)],
                        letterSpacing: -0.28,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    SvgPicture.asset(
                      'assets/images/2weui_arrow-outlined.svg',
                      color: const Color(0xFFA3A3A3),
                    ),
                  ],
                ),
                // Row(
                //   children: [
                //     Text(
                //       '',
                //       style: TextStyle(
                //         color: const Color(0xFFA3A3A3),
                //         fontSize: 14.sp,
                //         fontVariations: const [FontVariation('wght', 500)],
                //         letterSpacing: -0.28,
                //       ),
                //     ),
                //     SizedBox(width: 4.w),
                //     SvgPicture.asset(
                //       'assets/images/2weui_arrow-outlined.svg',
                //       color: const Color(0xFFA3A3A3),
                //     ),
                //   ],
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
