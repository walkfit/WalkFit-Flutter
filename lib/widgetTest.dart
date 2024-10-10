import 'package:flutter/material.dart';
import 'package:walkfit/appBarStyle.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Apage(),
    );
  }
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30), // 앱바 높이 조절
        child: AppBarStyle(
          appBarTitle: "asdf",
          appBarActions: true,
        ),
      ),
    );
  }
}

class Apage extends StatelessWidget {
  const Apage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const WidgetTest(),
            ),
          );
        },
        icon: const Icon(Icons.abc),
      ),
    );
  }
}
