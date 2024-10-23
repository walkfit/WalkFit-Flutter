import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/accountCheckPage.dart';
import 'package:walkfit/widgets/appBarWidget.dart';
import 'package:walkfit/widgets/logoWidget.dart';
import 'package:walkfit/widgets/textFieldWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailLoginPage extends StatelessWidget {
  const EmailLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(58.h),
        child: const AppBarWidget(
          title: '로그인',
          actions: true,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 31.h),
            LogoWidget(fontSize: 48.sp),
            SizedBox(height: 67.h),
            TextFieldWidget(
              prefixIcon:
                  SvgPicture.asset('assets/images/ic_outline-email.svg'),
              hintText: '이메일',
              obscureText: false,
              suffixIcon: false,
            ),
            SizedBox(height: 20.h),
            TextFieldWidget(
              prefixIcon: SvgPicture.asset('assets/images/uil_lock.svg'),
              hintText: '비밀번호',
              obscureText: true,
              suffixIcon: true,
            ),
            SizedBox(height: 19.h),
            Container(
              width: double.infinity,
              height: 52.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).primaryColor,
              ),
              child: Center(
                child: Text(
                  '로그인',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontVariations: const [
                      FontVariation('wght', 600),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 14.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        '비밀번호 찾기',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(width: 9.w),
                      SvgPicture.asset('assets/images/2weui_arrow-outlined.svg')
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 56.h),
            Text(
              'SNS로 간편하게 시작해보세요',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(height: 12.h),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/devicon_google.svg'),
              style: IconButton.styleFrom(
                shape: const CircleBorder(),
                side: BorderSide(color: Colors.black.withOpacity(0.2)),
                padding: EdgeInsets.all(13.64.r),
              ),
            ),
            SizedBox(height: 149.h),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  '아직 회원이 아니신가요?',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: -0.50,
                  ),
                ),
                SizedBox(width: 9.w),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    '회원가입',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontVariations: const [FontVariation('wght', 700)],
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
