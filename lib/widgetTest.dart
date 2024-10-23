import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:walkfit/emailLoginPage.dart';
import 'package:walkfit/joinPage.dart';

void main() {
  runApp(const WidgetTest());
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
          backgroundColor: Colors.grey,
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Column(
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('hello')],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [Text('world')],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.lightBlueAccent,
                width: 340,
                height: 50,
                child: const Center(
                  child: Text('data'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
