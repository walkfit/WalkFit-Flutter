import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/alarmPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  final String appBarTitle;
  final bool appBarActions;
  const AppBarWidget({
    super.key,
    required this.appBarTitle,
    this.appBarActions = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.navigate_before,
          size: 40,
        ),
      ),
      title: Text(
        appBarTitle,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
          height: 0.07,
          letterSpacing: -0.2,
        ),
      ),
      actions: appBarActions
          ? [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AlarmPage(),
                    ),
                  );
                },
                icon: SvgPicture.asset(
                  'assets/images/bell.svg',
                ),
              ),
            ]
          : null,
      centerTitle: true,
    );
  }
}
