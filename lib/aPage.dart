import 'package:flutter/material.dart';
import 'package:walkfit/appBarStyle.dart';
import 'package:walkfit/widgetTest.dart';

class Apage extends StatelessWidget {
  const Apage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.abc),
        title: const Text('data'),
        actions: const [Icon(Icons.zoom_out_sharp)],
      ),
    );
  }
}
