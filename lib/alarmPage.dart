import 'package:flutter/material.dart';
import 'package:walkfit/widgets/appBarWidget.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AppBarWidget(appBarTitle: '알림'),
      ),
  
    );
  }
}
