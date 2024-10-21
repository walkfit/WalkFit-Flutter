import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatefulWidget {
  final Widget prefixIcon;
  final String hintText;
  bool obscureText;
  final bool suffixIcon;

  TextFieldWidget(
      {super.key,
      required this.prefixIcon,
      required this.hintText,
      required this.obscureText,
      required this.suffixIcon});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 52.h,
      child: TextField(
        obscureText: widget.obscureText,
        onTapOutside: (event) => FocusManager.instance.primaryFocus
            ?.unfocus(), //바깥 영역이 탭 되었을 때 focus비활성화
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color(0xFFAFAFAF),
            letterSpacing: -0.32,
          ),
          prefixIcon: IconButton(onPressed: () {}, icon: widget.prefixIcon),
          suffixIcon: widget.suffixIcon
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  icon: widget.obscureText
                      ? SvgPicture.asset(
                          'assets/images/weui_eyes-off-outlined.svg')
                      : SvgPicture.asset(
                          'assets/images/weui_eyes-on-outlined.svg'),
                )
              : const SizedBox(),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFAFAFAF), width: 1)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
                color: Color.fromRGBO(33, 47, 131, 1), width: 2),
          ),
        ),
      ),
    );
  }
}
