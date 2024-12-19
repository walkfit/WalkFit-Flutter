import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:walkfit/auth/googleLogin.dart';
import 'package:walkfit/detailInputPage.dart';
import 'package:walkfit/emailLoginPage.dart';
import 'package:walkfit/joinPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walkfit/widgets/logoWidget.dart';

class AccountCheckPage extends StatelessWidget {
  AccountCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 326.h),
            LogoWidget(fontSize: 92.sp),
            SizedBox(height: 112.h),
            InkWell(
              onTap: () async{
                var user = await signInGoogle();
                if (user != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailInputPage()));
                }else{
                  log('user is null');
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14.16.w),
                width: double.infinity,
                height: 52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: const Color.fromRGBO(140, 140, 140, 0.2)),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/devicon_google.svg'),
                    SizedBox(width: 85.98.w),
                    Text(
                      '구글로 가입하기',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        height: 0.08.h,
                        //줄간격
                        letterSpacing: -0.32, //자간
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Joinpage(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                width: double.infinity,
                height: 52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromRGBO(140, 140, 140, 0.2),
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/ic_outline-email.svg'),
                    SizedBox(width: 78.35.w),
                    Text(
                      '이메일로 가입하기',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        height: 0.h,
                        //줄간격
                        letterSpacing: -0.32, //자간
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 29.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '이미 회원이신가요?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    height: 0.h,
                    letterSpacing: -0.5,
                  ),
                ),
                SizedBox(
                  width: 9.h,
                ),
                Text.rich(
                  TextSpan(
                    text: '로그인',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontVariations: const [FontVariation('wght', 600)],
                      height: 0.h,
                      letterSpacing: -0.5,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EmailLoginPage(),
                          ),
                        );
                      },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
