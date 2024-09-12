import 'package:flutter/material.dart';
import 'package:walkfit/logo.dart';

class LoadingStart extends StatelessWidget {
  const LoadingStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Logo(
                fontSize: 90,
              )
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: const Icon(Icons.g_mobiledata),
          ),
        ],
      ),
    );
  }
}