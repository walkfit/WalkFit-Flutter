import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatefulWidget {
  final Widget prefixIcon;
  final String hintText;
  bool obscureText;
  final bool suffixIcon;
  final Color textColor;
  final Color backgroundColor;
  final bool borderSide;

  TextFieldWidget({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    required this.obscureText,
    required this.suffixIcon,
    this.textColor = const Color(0xFFAFAFAF),
    this.backgroundColor = Colors.white,
    this.borderSide = true,
  });

  factory TextFieldWidget.filled({
    required String hintText,
    required Widget prefixIcon,
    required Color textColor,
    required Color backgroundColor,
  }) =>
      TextFieldWidget(
        prefixIcon: prefixIcon,
        hintText: hintText,
        obscureText: true,
        suffixIcon: false,
        textColor: textColor,
        backgroundColor: backgroundColor,
        borderSide: false,
      );

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52.h,
      child: TextField(
        selectionControls: MaterialTextSelectionControls(),
        cursorColor: Theme.of(context).primaryColor,
        obscureText: widget.obscureText,
        onTapOutside: (event) => FocusManager.instance.primaryFocus
            ?.unfocus(), //바깥 영역이 탭 되었을 때 focus비활성화
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.backgroundColor,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: widget.textColor,
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
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: widget.borderSide
                ? const BorderSide(color: Color(0xFFAFAFAF), width: 1)
                : BorderSide.none,
          ),
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
