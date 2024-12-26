import 'package:flutter/material.dart';

void main() async {
  runApp(const WidgetTest());
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Stateless());
  }
}

class Stateless extends StatelessWidget {
  const Stateless({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('data'),
      ),
    );
  }
}

class Stateful extends StatefulWidget {
  const Stateful({super.key});

  @override
  State<Stateful> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Stateful> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
