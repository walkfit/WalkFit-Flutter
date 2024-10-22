import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/emailLoginPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarwidget extends StatelessWidget {
  final String title;
  final bool actions;
  const AppBarwidget({super.key, required this.title, this.actions = false});

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
          fontVariations: const [FontVariation('wght', 600)],
          height: 0.07.h,
          letterSpacing: -0.20,
        ),
      ),
      actions: actions
          ? [SvgPicture.asset('assets/images/bx_bell.svg')]
          : [const SizedBox()],
      centerTitle: true,
    );
  }
}
