import 'package:flutter/material.dart';
import 'package:walkfit/accountCheckPage.dart';
import 'package:walkfit/emailLoginPage.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  const ButtonWidget({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 52),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
          fontVariations: const [FontVariation('wght', 600)],
          height: 0,
        ),
      ),
    );
  }
}
