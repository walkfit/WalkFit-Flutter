import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldWidget extends StatefulWidget {
  final SvgPicture prefixIcon;
  final String hintText;
  bool obscureText;
  final bool suffixIcon;
  final Color textColor;
  final Color backgroundColor;
  final bool borderSide;
  final TextEditingController controller;

  TextFormFieldWidget({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon = false,
    this.obscureText = false,
    this.textColor = const Color(0xFFAFAFAF),
    this.backgroundColor = Colors.white,
    this.borderSide = true,
    required this.controller,
  });

  // factory TextFormFieldWidget.password({
  //   required String hintText,
  //   required SvgPicture prefixIcon,
  // }) =>
  //     TextFormFieldWidget(
  //       prefixIcon: prefixIcon,
  //       hintText: hintText,
  //       obscureText: true,
  //       suffixIcon: true,
  //       textColor: const Color(0xFFAFAFAF),
  //     );

  // factory TextFormFieldWidget.passwordCheck({
  //   required SvgPicture prefixIcon,
  // }) =>
  //     TextFormFieldWidget(
  //       hintText: '비밀번호 확인',
  //       prefixIcon: prefixIcon,
  //       backgroundColor: const Color(0xFFE57070),
  //       obscureText: true,
  //       suffixIcon: true,
  //     );

  @override
  State<TextFormFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52.h,
      child: TextFormField(
        validator: (value) {
          
        },
        controller: widget.controller,
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
