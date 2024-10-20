import 'package:flutter/material.dart';
import 'package:walkfit/accountCheckPage.dart';

class Joinpage extends StatelessWidget {
  const Joinpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AccountCheckPage(),
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
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
