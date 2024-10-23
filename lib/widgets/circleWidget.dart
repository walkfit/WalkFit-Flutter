import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const CircleWidget({
    super.key,
    required this.width,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: color,
      ),
    );
  }
}
