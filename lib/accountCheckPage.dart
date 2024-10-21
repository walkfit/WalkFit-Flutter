import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:walkfit/emailLoginPage.dart';
import 'package:walkfit/joinPage.dart';
import 'package:walkfit/logo.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountCheckPage extends StatelessWidget {
  const AccountCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Logo(
              fontSize: 92.sp,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            child: Column(
              children: [
                SizedBox(height: 589.h),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.16.w),
                    width: double.infinity,
                    height: 52.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0x338B8B8B),
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/devicon_google.svg'),
                        SizedBox(width: 85.98.w),
                        const Text(
                          '구글로 가입하기',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'PretendardVariable',
                            fontWeight: FontWeight.w500,
                            height: 0.08, //줄간격
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
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.16.w,
                    ),
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
                        const Text(
                          '이메일로 가입하기',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'PretendardVariable',
                            fontWeight: FontWeight.w500,
                            height: 0.08, //줄간격
                            letterSpacing: -0.32, //자간
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 28.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '이미 회원이신가요?',
                      style: TextStyle(
                        fontSize: 16.sp,
                        height: 0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.50,
                      ),
                    ),
                    SizedBox(width: 7.w),
                    RichText(
                      text: TextSpan(
                        text: '로그인',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: -0.50,
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
        ],
      ),
    );
  }
}
