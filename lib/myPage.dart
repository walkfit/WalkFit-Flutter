import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 98.h),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: SizedBox(
              width: 270.w,
              height: 80.h,
              child: Row(
                children: [
                  Container(
                    width: 80.w,
                    height: double.infinity,
                    decoration: const ShapeDecoration(
                      color: Colors.blue,
                      shape: CircleBorder(),
                      // image: DecorationImage(
                      //   image: AssetImage('assets/images/background.jpg'),
                      //   fit: BoxFit.fill,
                      // ),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '이름',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontVariations: const [
                            FontVariation('wght', 600),
                          ],
                          letterSpacing: -0.2,
                        ),
                      ),
                      SizedBox(height: 4.5.h),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              '워크핏과 함께한지 day일',
                              style: TextStyle(
                                color: const Color(0xFF8D8D8D),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.32,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            SvgPicture.asset(
                              'assets/images/2weui_arrow-outlined.svg',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 27.h),
          Container(
            width: double.infinity,
            height: 30.h,
            color: const Color(0x33777777),
          ),
          SizedBox(height: 31.h),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '계정관리',
                    style: TextStyle(
                      color: const Color(0xFF777777),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.35,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  clickText('이메일 변경하기', () {}),
                  SizedBox(height: 18.h),
                  clickText('닉네임 변경하기', () {}),
                  SizedBox(height: 18.h),
                  clickText('탈퇴하기', () {}),
                  SizedBox(height: 30.h),
                  Text(
                    '서비스',
                    style: TextStyle(
                      color: const Color(0xFF777777),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.35,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  clickText('공지사항', () {}),
                  SizedBox(height: 18.h),
                  clickText('이용약관', () {}),
                  SizedBox(height: 18.h),
                  clickText('버전 정보', () {}),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0x4C777777),
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType
              .fixed, //4개 이상의 아이템 추가시 label이 보이지않는 문제를 해결함
          currentIndex: currentIndex,
          onTap: (value) => setState(() {
            currentIndex = value;
            print('currentIndex');
          }),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/ic_round-home.svg',
              ),
              label: '홈',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    'assets/images/material-symbols_leaderboard-rounded.svg'),
                label: '리더보드'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/Group.svg'), label: '러닝'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/mdi_user.svg'),
                label: '마이페이지')
          ],
        ),
      ),
    );
  }

  GestureDetector clickText(String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.50,
        ),
      ),
    );
  }
}
