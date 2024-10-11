import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/appBarStyle.dart';
import 'package:walkfit/joinPage.dart';
import 'package:walkfit/logo.dart';
import 'package:walkfit/startPage.dart';

class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({super.key});

  @override
  State<EmailLoginPage> createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
  bool passwordHide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AppBarStyle(appBarTitle: '로그인', appBarActions: true),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 31),
              const Logo(fontSize: 50),
              const SizedBox(height: 67),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: SvgPicture.asset('assets/images/bell.svg'),
                ),
              ]),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextField(
                  onTapOutside: (event) => FocusManager.instance.primaryFocus
                      ?.unfocus(), //바깥 영역이 탭 되었을 때 focus비활성화
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: SvgPicture.asset(
                        'assets/images/bell.svg',
                      ),
                    ),
                    hintText: '이메일1',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextField(
                  obscureText: false,
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordHide != passwordHide;
                          print('!passwordHide');
                        });
                      },
                      icon: passwordHide
                          ? SvgPicture.asset(
                              'assets/images/eyes-off-outlined.svg')
                          : SvgPicture.asset(
                              'assets/images/eyes-off-outlined.svg'),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: SvgPicture.asset(
                        'assets/images/lock.svg',
                      ),
                    ),
                    hintText: '비밀번호',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: const Center(
                    child: Text(
                      '로그인',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
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
              const SizedBox(height: 56),
              const Text(
                'SNS로 간편하게 시작해보세요',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(13),
                  side: BorderSide(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/images/google.svg',
                ),
              ),
              const SizedBox(height: 149),
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
