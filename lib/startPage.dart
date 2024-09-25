import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:walkfit/emailLoginPage.dart';
import 'package:walkfit/joinPage.dart';
import 'package:walkfit/logo.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: Logo(
              fontSize: 90,
            ),
          ),
          Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 387,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14.16,
                    ),
                    width: 350,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color.fromRGBO(140, 140, 140, 0.2),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/google_upgrade.png',
                        ),
                        const Expanded(
                          child: Text(
                            '구글로 가입하기',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'PretendardVariable',
                              fontWeight: FontWeight.w500,
                              height: 0.08, //줄간격
                              letterSpacing: -0.32, //자간
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14.16,
                    ),
                    width: 350,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color.fromRGBO(140, 140, 140, 0.2),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/ic_outline-email.png',
                        ),
                        const Expanded(
                          child: Text(
                            '이메일로 가입하기',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'PretendardVariable',
                              fontWeight: FontWeight.w500,
                              height: 0.08, //줄간격
                              letterSpacing: -0.32, //자간
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                RichText(
                  text: TextSpan(
                    text: '이미 회원이신가요?  ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'PretendardVariable',
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '로그인',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'PretendardVariable',
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(33, 47, 131, 1),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
