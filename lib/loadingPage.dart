import 'package:flutter/material.dart';
import 'package:walkfit/widgets/logoWidget.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              logoWidget(
                fontSize: 92,
              )
            ],
          ),
        ],
      ),
    );
  }
}
