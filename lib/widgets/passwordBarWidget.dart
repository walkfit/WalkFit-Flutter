// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class PasswordBarwidget extends StatelessWidget {
//   final String textFieldHintText;
//   const PasswordBarwidget({super.key, required this.textFieldHintText});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 50,
//       child: TextField(
//         cursorColor: Colors.black,
//         obscureText: hiddenPassword,
//         onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
//         decoration: InputDecoration(
//             suffixIcon: IconButton(
//               onPressed: () {
//                 setState(() {
//                   hiddenPassword = !hiddenPassword;
//                 });
//               },
//               icon: hiddenPassword
//                   ? SvgPicture.asset('assets/images/eyes-off-outlined.svg')
//                   : SvgPicture.asset('assets/images/eyes-on-outlined.svg'),
//             ),
//             prefixIcon: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 12),
//               child: SvgPicture.asset(
//                 'assets/images/lock.svg',
//               ),
//             ),
//             hintText: textFieldHintText,
//             enabledBorder: const OutlineInputBorder(
//               borderSide: BorderSide(color: Color(0x338B8B8B)),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Theme.of(context).primaryColor),
//             )),
//       ),
//     );
//   }
// }
