import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/widgets/appBarWidget.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Apage(),
    );
  }
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30), // 앱바 높이 조절
        child: AppBarWidget(
          appBarTitle: "asdf",
          appBarActions: true,
        ),
      ),
    );
  }
}

class Apage extends StatelessWidget {
  const Apage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: TextField(
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
          hintText: '이메일12',
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x338B8B8B)),
          ),
        ),
        // decoration: InputDecoration(
        //   prefixIcon: Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 12),
        //     child: SvgPicture.asset(
        //       'assets/images/bell.svg',
        //     ),
        //   ),
        //   hintText: '이메일12',
        //   border: const OutlineInputBorder(
        //       borderSide: BorderSide(color: Colors.blue, width: 10)),
        // ),
      ),
    );
  }
}
