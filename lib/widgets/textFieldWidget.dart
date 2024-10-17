import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatefulWidget {
  final SvgPicture textFieldPrefixIcon;
  final String textFieldHintText;
  final bool textFieldSuffixIcon;
  bool hiddenPassword;
  TextFieldWidget({
    super.key,
    required this.textFieldPrefixIcon,
    required this.textFieldHintText,
    this.textFieldSuffixIcon = false,
    required this.hiddenPassword,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldBarState();
}

class _TextFieldBarState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: TextField(
        cursorColor: Colors.black,
        obscureText: widget.hiddenPassword,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        decoration: InputDecoration(
            suffixIcon: widget.textFieldSuffixIcon
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        widget.hiddenPassword = !widget.hiddenPassword;
                      });
                    },
                    icon: widget.hiddenPassword
                        ? SvgPicture.asset(
                            'assets/images/eyes-off-outlined.svg')
                        : SvgPicture.asset(
                            'assets/images/eyes-on-outlined.svg'),
                  )
                : null,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: widget.textFieldPrefixIcon,
            ),
            hintText: widget.textFieldHintText,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x338B8B8B)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
            )),
      ),
    );
  }
}
