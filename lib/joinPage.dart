import 'package:flutter/material.dart';
import 'package:walkfit/startPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walkfit/widgets/appBarWidget.dart';

class Joinpage extends StatelessWidget {
  const Joinpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62.h),
        child: const AppBarWidget(appBarTitle: '회원가입'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.w),
        child: Column(
          children: [
            SizedBox(height: 70.h),
            Text(
              '필요한 정보들을\n입력해주세요',
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w500,
                height: 1.2,
                letterSpacing: -2,
              ),
            ),
            SizedBox(height: 62.h),
          ],
        ),
      ),
    );
  }
}
