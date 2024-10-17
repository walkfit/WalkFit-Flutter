import 'package:flutter/material.dart';
import 'package:walkfit/startPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Joinpage extends StatelessWidget {
  const Joinpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StartPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.navigate_before,
            size: 40,
          ),
        ),
        title: const Text(
          '회원가입',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            height: 0.07,
            letterSpacing: -0.2,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20),
        child: const Column(
          children: [
            SizedBox(height: 70),
            Text(
              '필요한 정보들을\n입력해주세요',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                height: 1.2,
                letterSpacing: -2,
              ),
            ),
            SizedBox(height: 62),
          ],
        ),
      ),
    );
  }
}
