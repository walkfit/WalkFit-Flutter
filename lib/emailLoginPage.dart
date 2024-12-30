import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/widgets/ButtonWidget.dart';
import 'package:walkfit/widgets/appBarWidget.dart';
import 'package:walkfit/widgets/logoWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({super.key});

  @override
  State<EmailLoginPage> createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
  bool _obscureText = true;
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController userPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(58.h),
        child: const AppBarWidget(
          title: '로그인',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 31.h),
                LogoWidget(fontSize: 48.sp),
                SizedBox(height: 67.h),
                SizedBox(
                  //이메일 TextFormField
                  width: double.infinity,
                  height: 52.h,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '이메일을 입력해주세요.';
                      }
                      return null;
                    },
                    controller: userEmailController,
                    selectionControls: MaterialTextSelectionControls(),
                    cursorColor: const Color.fromRGBO(33, 47, 131, 1),
                    onTapOutside: (event) => FocusManager.instance.primaryFocus
                        ?.unfocus(), //바깥 영역이 탭 되었을 때 focus비활성화
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '이메일',
                      hintStyle: const TextStyle(
                        color: Color(0xFFAFAFAF),
                        letterSpacing: -0.32,
                      ),
                      prefixIcon: SvgPicture.asset(
                          'assets/images/ic_outline-email.svg'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xFFAFAFAF), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(33, 47, 131, 1), width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  //비밀번호 TextFormField
                  width: double.infinity,
                  height: 52.h,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '비밀번호를 입력해주세요.';
                      }
                      return null;
                    },
                    controller: userPasswordController,
                    selectionControls: MaterialTextSelectionControls(),
                    cursorColor: const Color.fromRGBO(33, 47, 131, 1),
                    obscureText: _obscureText,
                    onTapOutside: (event) => FocusManager.instance.primaryFocus
                        ?.unfocus(), //바깥 영역이 탭 되었을 때 focus비활성화
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '사용할 비밀번호',
                      hintStyle: const TextStyle(
                        color: Color(0xFFAFAFAF),
                        letterSpacing: -0.32,
                      ),
                      prefixIcon:
                          SvgPicture.asset('assets/images/uil_lock.svg'),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: _obscureText
                            ? SvgPicture.asset(
                                'assets/images/weui_eyes-off-outlined.svg')
                            : SvgPicture.asset(
                                'assets/images/weui_eyes-on-outlined.svg'),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xFFAFAFAF), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(33, 47, 131, 1), width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 19.h),
                ButtonWidget(
                    onTap: () {},
                    text: '로그인',
                    textColor: const Color(0xFFF0F0F0),
                    backgroundColor: Theme.of(context).primaryColor),
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
                          SvgPicture.asset(
                              'assets/images/2weui_arrow-outlined.svg')
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          log('성공');
                        } else {
                          log('실패');
                        }
                      },
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
        ),
      ),
    );
  }
}
