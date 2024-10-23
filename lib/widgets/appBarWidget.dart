import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final bool actions;
  const AppBarWidget({super.key, required this.title, this.actions = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset('assets/images/weui_arrow-outlined.svg'),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.sp,
          fontFamily: 'Pretendard Variable',
          fontWeight: FontWeight.w600,
          height: 0.07,
          letterSpacing: -0.20,
        ),
      ),
      actions: actions
          ? [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/bx_bell.svg'),
              ),
            ]
          : const [SizedBox()],
      centerTitle: true,
    );
  }
}
