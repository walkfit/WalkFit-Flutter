import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walkfit/widgets/ButtonWidget.dart';
import 'package:walkfit/widgets/appBarWidget.dart';

class Joinpage extends StatefulWidget {
  const Joinpage({super.key});

  @override
  State<Joinpage> createState() => _JoinpageState();
}

class _JoinpageState extends State<Joinpage> {
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController userPasswordController = TextEditingController();
  final TextEditingController userPasswordConfirmController =
      TextEditingController();
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();

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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () => log(
                      'userPasswordController = ${userPasswordController.text.toString()}'),
                  child: const Text('값 확인하기'),
                ),
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
                SizedBox(
                  //이메일 TextFormField
                  width: double.infinity,
                  height: 52.h,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '이메일을 한 번 더 입력해주세요.';
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
                      hintText: '사용할 비밀번호',
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
                SizedBox(height: 18.h),
                SizedBox(
                  //비밀번호 TextFormField
                  width: double.infinity,
                  height: 52.h,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '비밀번호를 한 번 더 입력해주세요.';
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
                SizedBox(height: 18.h),
                SizedBox(
                  //비밀번호 확인 TextFormField
                  width: double.infinity,
                  height: 52.h,

                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '비밀번호를 한 번 더 입력해주세요.';
                      } else if (value !=
                          userPasswordController.text.toString()) {
                        return '비밀번호가 일치하지 않습니다.';
                      }
                      return null;
                    },
                    controller: userPasswordConfirmController,
                    selectionControls: MaterialTextSelectionControls(),
                    cursorColor: const Color.fromRGBO(33, 47, 131, 1),
                    obscureText: _obscureText,
                    onTapOutside: (event) => FocusManager.instance.primaryFocus
                        ?.unfocus(), //바깥 영역이 탭 되었을 때 focus비활성화
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFE57070),
                      hintText: '비밀번호 확인',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        letterSpacing: -0.32,
                      ),
                      prefixIcon: SvgPicture.asset(
                          'assets/images/uil_lock-white-color.svg'),
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
                        borderSide: const BorderSide(color: Color(0xFFE57070)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFFE57070)),
                      ),
                    ),
                  ),
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
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      String emailValue = userEmailController.text.toString();
                      String passwordValue =
                          userPasswordController.text.toString();
                      // String passwordConfirmValue = userPasswordConfirmController.text.toString();

                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: emailValue, password: passwordValue);
                    }
                    Account account = Account(userEmailController.text.toString(), userPasswordController.text.toString(), userPasswordConfirmController.text.toString());
                  },
                  text: '회원가입',
                  textColor: const Color(0xFFF0F0F0),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Account{
  String email = '';
  String password = '';
  String passwordConfirm = '';
  
  Account(String emailValue, String passwordValue, String passwordConfirmValue){
    email = emailValue;
    password = passwordValue;
    password = passwordConfirmValue;
  }
}