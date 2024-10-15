import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Emailbarwidget extends StatelessWidget {
  const Emailbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextField(
        cursorColor: Colors.black,
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
            hintText: '이메일',
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x338B8B8B)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).primaryColor))),
      ),
    );
  }
}
