import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarStyle extends StatelessWidget {
  final String appBarTitle;
  final bool appBarActions;
  const AppBarStyle({
    super.key,
    required this.appBarTitle,
    required this.appBarActions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.navigate_before,
          size: 40,
        ),
      ),
      title: Text(
        appBarTitle,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          height: 0.07,
          letterSpacing: -0.2,
        ),
      ),
      actions: appBarActions
          ? [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/bell.svg',
                ),
              ),
            ]
          : null,
      centerTitle: true,
    );
  }
}
