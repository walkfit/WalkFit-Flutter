import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

InAppLocalhostServer server = InAppLocalhostServer(port: 8080);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await server.start();
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
    return Scaffold(
      body: SafeArea(
        child: Tab(),
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
