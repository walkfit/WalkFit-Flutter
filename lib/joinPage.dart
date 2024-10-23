import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/accountCheckPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walkfit/widgets/buttonWidget.dart';
import 'package:walkfit/widgets/appBarWidget.dart';
import 'package:walkfit/widgets/textFieldWidget.dart';

class Joinpage extends StatelessWidget {
  const Joinpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(58.h),
        child: const AppBarWidget(title: '회원가입'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70.h),
              Text(
                '필요한 정보들을\n입력해주세요',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.3.h,
                  letterSpacing: -2,
                ),
              ),
              SizedBox(height: 62.h),
              TextFieldWidget(
                prefixIcon:
                    SvgPicture.asset('assets/images/ic_outline-email.svg'),
                hintText: '이메일',
                obscureText: false,
                suffixIcon: false,
              ),
              SizedBox(height: 18.h),
              TextFieldWidget(
                prefixIcon: SvgPicture.asset('assets/images/uil_lock.svg'),
                hintText: '사용할 비밀번호',
                obscureText: true,
                suffixIcon: false,
              ),
              SizedBox(height: 18.h),
              TextFieldWidget.filled(
                hintText: '비밀번호 확인',
                prefixIcon:
                    SvgPicture.asset('assets/images/uil_lock-white-color.svg'),
                textColor: Colors.white,
                backgroundColor: const Color(0xFFE57070),
              ),
              SizedBox(height: 7.h),
              Text(
                '비밀번호가 일치하지 않습니다',
                style: TextStyle(
                  color: const Color(0xFFFF5E5E),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -0.24,
                ),
              ),
              SizedBox(height: 71.h),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    width: 22.w,
                    height: 22.h,
                    decoration: const ShapeDecoration(
                      color: Color.fromRGBO(33, 47, 131, 1),
                      shape: CircleBorder(),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/material-symbols_check.svg',
                    ),
                  ),
                  SizedBox(width: 11.w),
                  Text(
                    '만 14세 이상입니다.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.32,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    width: 22.w,
                    height: 22.h,
                    decoration: const ShapeDecoration(
                      color: Color.fromRGBO(33, 47, 131, 1),
                      shape: CircleBorder(),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/material-symbols_check.svg',
                    ),
                  ),
                  SizedBox(width: 11.w),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                        height: 0.08.h,
                        letterSpacing: -0.32,
                      ),
                      children: [
                        const TextSpan(
                          text: '워크핏 ',
                        ),
                        TextSpan(
                          text: '이용약관',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.underline,
                            height: 0.08.h,
                            letterSpacing: -0.32,
                          ),
                        ),
                        const TextSpan(
                          text: '에 동의합니다.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    width: 22.w,
                    height: 22.h,
                    decoration: const ShapeDecoration(
                      color: Color.fromRGBO(33, 47, 131, 1),
                      shape: CircleBorder(),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/material-symbols_check.svg',
                    ),
                  ),
                  SizedBox(width: 11.w),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                        height: 0.08.h,
                        letterSpacing: -0.32,
                      ),
                      children: [
                        const TextSpan(
                          text: '워크핏 ',
                        ),
                        TextSpan(
                          text: '개인정보 수집 및 이용',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.underline,
                            height: 0.08.h,
                            letterSpacing: -0.32,
                          ),
                        ),
                        const TextSpan(
                          text: '에 동의합니다.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 64.h),
              ButtonWidget(
                  text: '회원가입',
                  textColor: const Color(0xFFF0F0F0),
                  backgroundColor: Theme.of(context).primaryColor,),
            ],
          ),
        ),
      ),
    );
  }
}
