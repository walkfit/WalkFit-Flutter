import 'package:flutter/material.dart';
import 'package:walkfit/logo.dart';
import 'package:walkfit/startPage.dart';

class EmailLoginPage extends StatelessWidget {
  const EmailLoginPage({super.key});

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
          '로그인',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/bx_bell.png',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            const SizedBox(
              height: 31,
            ),
            const Logo(fontSize: 50),
            const SizedBox(
              height: 67,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    'assets/images/ic_outline-email.png',
                  ),
                  hintText: '이메일',
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/images/uil_lock.png'),
                  hintText: '비밀번호',
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
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
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => print('success'),
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
            const SizedBox(
              height: 56,
            ),
            const Text(
              'SNS로 간편하게 시작해보세요',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            MaterialButton(
              onPressed: () {},
              child: Image.asset(
                'assets/images/google_upgrade.png',
              ),
            ),
          ],
        ),
      ),
      // body: GestureDetector(
      //   onTap: () => FocusScope.of(context).unfocus(),
      //   child: SingleChildScrollView(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Column(
      //           children: [
      //             const SizedBox(
      //               height: 31,
      //             ),
      //             const Logo(fontSize: 50),
      //             const SizedBox(
      //               height: 67,
      //             ),
      //             SizedBox(
      //               width: 350,
      //               height: 50,
      //               child: TextField(
      //                 onChanged: (value) {},
      //                 decoration: InputDecoration(
      //                   prefixIcon: Image.asset(
      //                     'assets/images/ic_outline-email.png',
      //                   ),
      //                   hintText: '이메일',
      //                   border: const OutlineInputBorder(),
      //                 ),
      //               ),
      //             ),
      //             const SizedBox(
      //               height: 20,
      //             ),
      //             SizedBox(
      //               width: 350,
      //               height: 50,
      //               child: TextField(
      //                 decoration: InputDecoration(
      //                   prefixIcon: Image.asset('assets/images/uil_lock.png'),
      //                   hintText: '비밀번호',
      //                   border: const OutlineInputBorder(),
      //                 ),
      //               ),
      //             ),
      //             const SizedBox(
      //               height: 20,
      //             ),
      //             Container(
      //               width: 350,
      //               height: 50,
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(8),
      //                 color: Theme.of(context).primaryColor,
      //               ),
      //               child: const Center(
      //                 child: Text(
      //                   '로그인',
      //                   textAlign: TextAlign.center,
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 16,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             const SizedBox(
      //               height: 14,
      //             ),
      //             const Row(
      //               children: [
      //                 Expanded(
      //                   child: Text(
      //                     'datasdsdsdsd',
      //                     textAlign: TextAlign.end,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
