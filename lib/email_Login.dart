import 'package:flutter/material.dart';
import 'package:walkfit/logo.dart';

class EmailLogin extends StatelessWidget {
  const EmailLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            print('success');
          },
          icon: const Icon(
            Icons.navigate_before,
            size: 40,
          ),
        ),
        title: const Text(
          '로그인',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print('success');
            },
            icon: Image.asset(
              'assets/images/bx_bell.png',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Logo(fontSize: 50),
              Container(
                margin: const EdgeInsets.only(
                  top: 35,
                  bottom: 20,
                ),
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'assets/images/ic_outline-email.png',
                    ),
                    hintText: '이메일',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 50,
                margin: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('assets/images/uil_lock.png'),
                    hintText: '이메일',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 50,
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
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
              // const SizedBox(
              //   width: double.infinity,
              //   height: 10,
              //   child: Row(
              //     children: [
              //       Text(
              //         '비밀번호 찾기',
              //         style: TextStyle(
              //           fontSize: 12,
              //         ),
              //       ),
              //       SizedBox(
              //         height: 8,
              //       ),
              //       Icon(
              //         Icons.navigate_next,
              //       ),
              //     ],
              //   ),
              // ),
              const Row(
                children: [
                  Text('data'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
