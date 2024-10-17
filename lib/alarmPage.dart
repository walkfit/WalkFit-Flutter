import 'package:flutter/material.dart';
import 'package:walkfit/widgets/appBarWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: const AppBarWidget(appBarTitle: '알림'),
      ),
    );
  }
}