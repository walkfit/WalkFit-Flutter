import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarwidget extends StatelessWidget {
  final String title;
  final bool actions;
  const AppBarwidget({super.key, required this.title, this.actions = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset('assets/images/arrow-outlined.svg'),
      ),
      title: Text(title),
      actions: actions ? [SvgPicture.asset('assets/images/bx_bell.svg')] : null,
      centerTitle: true,
    );
  }
}
