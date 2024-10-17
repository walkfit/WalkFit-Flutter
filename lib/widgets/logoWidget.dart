import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class logoWidget extends StatelessWidget {
  final double fontSize;
  const logoWidget({
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
        color: Theme.of(context).primaryColor,
        fontSize: fontSize.sp,
      ),
    );
  }
}
