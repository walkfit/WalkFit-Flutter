import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double fontSize;
  const Logo({
    super.key,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '워크핏',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Cafe24Moyamoya-Regular-v1.0',
        fontWeight: FontWeight.w400,
        color: const Color.fromRGBO(33, 47, 131, 1),
        fontSize: fontSize,
      ),
    );
  }
}
