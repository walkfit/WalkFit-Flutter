import 'package:flutter/material.dart';
import 'package:walkfit/logo.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

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
              Logo(
                fontSize: 90,
              )
            ],
          ),
        ],
      ),
    );
  }
}
