import 'package:flutter/material.dart';
import 'package:walkfit/aPage.dart';
import 'package:walkfit/appBarStyle.dart';

void main() {
  runApp(const WidgetTest());
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: Apage(),
      ),
    );
  }
}
