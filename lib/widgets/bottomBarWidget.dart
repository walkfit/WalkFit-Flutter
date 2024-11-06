import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0x4C777777),
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            color: const Color(0xFF0C102E),
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.24,
          ),
          backgroundColor: Colors.white,
          type: BottomNavigationBarType
              .fixed, //4개 이상의 아이템 추가시 label이 보이지않는 문제를 해결함
          currentIndex: currentIndex,
          onTap: (value) => setState(() {
            currentIndex = value;
          }),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/ic_round-home.svg'),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  'assets/images/material-symbols_leaderboard-rounded.svg'),
              label: '리더보드',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Group.svg'),
              label: '러닝',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/mdi_user.svg'),
              label: '마이페이지',
            )
          ],
        ),
      );
  }
}