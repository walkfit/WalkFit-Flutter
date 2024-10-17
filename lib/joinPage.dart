import 'package:flutter/material.dart';
import 'package:walkfit/startPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/widgets/appBarWidget.dart';

class Joinpage extends StatelessWidget {
  const Joinpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AppBarWidget(appBarTitle: '회원가입'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            const Text(
              '필요한 정보들을\n입력해주세요',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                height: 1.2,
                letterSpacing: -2,
              ),
            ),
            const SizedBox(height: 62),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: const Icon(Icons.check))
              ],
            )
          ],
        ),
      ),
    );
  }
}
