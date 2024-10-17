import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/deviceScreenSize.dart';
import 'package:walkfit/main.dart';
import 'package:walkfit/widgetTest.dart';
import 'package:walkfit/widgets/appBarWidget.dart';
import 'package:walkfit/joinPage.dart';
import 'package:walkfit/widgets/emailBarWidget.dart';
import 'package:walkfit/widgets/logoWidget.dart';
import 'package:walkfit/startPage.dart';
import 'package:walkfit/widgets/passwordBarWidget.dart';
import 'package:walkfit/widgets/textFieldWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailLoginPage extends StatelessWidget {
  const EmailLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62.h),
        child: const AppBarWidget(appBarTitle: '로그인', appBarActions: true),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20.w, 0, 20.w, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 31.h),
              const logoWidget(fontSize: 50),
              SizedBox(height: 67.h),
              TextFieldWidget(
                textFieldPrefixIcon:
                    SvgPicture.asset('assets/images/email.svg'),
                textFieldHintText: '이메일',
                hiddenPassword: false,
              ),
              SizedBox(height: 20.h),
              TextFieldWidget(
                textFieldPrefixIcon: SvgPicture.asset('assets/images/lock.svg'),
                textFieldHintText: '비밀번호',
                hiddenPassword: true,
                textFieldSuffixIcon: true,
              ),
              SizedBox(height: 19.h),
              InkWell(
                onTap: () {},
                child: Container(
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
                      ),
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
                    child: const Wrap(
                      children: [
                        Text(
                          '비밀번호 찾기 ',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Icon(
                          Icons.navigate_next_outlined,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 56.h),
              const Text(
                'SNS로 간편하게 시작해보세요',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 12.h),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.6.w,
                    vertical: 13.6.h,
                  ),
                  side: BorderSide(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/images/google.svg',
                ),
              ),
              SizedBox(height: 149.h),
              Text.rich(
                TextSpan(
                  text: '아직 회원이 아니신가요?  ',
                  style: const TextStyle(
                    fontSize: 13,
                    letterSpacing: -0.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '회원가입',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Joinpage(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
