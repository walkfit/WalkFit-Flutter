import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const TermsOfUserWidget());
}

class TermsOfUserWidget extends StatefulWidget {
  const TermsOfUserWidget({super.key});

  @override
  State<TermsOfUserWidget> createState() => _TermsOfUserWidgetState();
}

class _TermsOfUserWidgetState extends State<TermsOfUserWidget> {
  bool firstTermsOfUse = false;
  bool secondTermsOfUse = false;
  bool thirdTermsOfUse = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(),
        body: Column(
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      firstTermsOfUse = !firstTermsOfUse;
                    });
                  },
                  icon: firstTermsOfUse
                      ? SvgPicture.asset(
                          'assets/images/material-symbols-confirmed.svg')
                      : SvgPicture.asset(
                          'assets/images/material-symbols-not-confirmed.svg'),
                ),
                const SizedBox(width: 11),
                const Text(
                  '만 14세 이상입니다.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    letterSpacing: -0.32,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 13),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        secondTermsOfUse = !secondTermsOfUse;
                      });
                    },
                    icon: secondTermsOfUse
                        ? SvgPicture.asset(
                            'assets/images/material-symbols-confirmed.svg')
                        : SvgPicture.asset(
                            'assets/images/material-symbols-not-confirmed.svg')),
                const SizedBox(width: 11),
                Text.rich(
                  TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.32,
                    ),
                    children: [
                      const TextSpan(
                        text: '워크핏 ',
                      ),
                      TextSpan(
                        text: '이용약관',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.underline,
                          letterSpacing: -0.32,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            log('잇힝');
                            await launchUrlString(
                                "https://chivalrous-fighter-44d.notion.site/16873610c0b7805bbe48e0cff794a274?pvs=4");
                          },
                      ),
                      const TextSpan(
                        text: '에 동의합니다.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 13),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        thirdTermsOfUse = !thirdTermsOfUse;
                      });
                    },
                    icon: thirdTermsOfUse
                        ? SvgPicture.asset(
                            'assets/images/material-symbols-confirmed.svg')
                        : SvgPicture.asset(
                            'assets/images/material-symbols-not-confirmed.svg')),
                const SizedBox(width: 11),
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.32,
                    ),
                    children: [
                      TextSpan(
                        text: '워크핏 ',
                      ),
                      TextSpan(
                        text: '개인정보 수집 및 이용',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.underline,
                          letterSpacing: -0.32,
                        ),
                      ),
                      TextSpan(
                        text: '에 동의합니다.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SvgPicture.asset('assets/images/material-symbols-confirmed.svg'),
          ],
        ),
      ),
    );
  }
}
