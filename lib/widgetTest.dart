import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walkfit/joinPage.dart';
import 'package:walkfit/widgets/appBarWidget.dart';
import 'package:walkfit/widgets/logoWidget.dart';
import 'package:walkfit/widgets/textFieldWidget.dart';

void main() {
  runApp(const MyWidget());
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.7, 783.3),
      builder: (context, child) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(56.h),
            child: const AppBarWidget(appBarTitle: '로그인', appBarActions: true),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 393,
                height: 40.h,
                color: Colors.red,
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: 393,
                height: 40.h,
                color: Colors.orange,
              ),
              SizedBox(
                height: 60.h,
              ),
              Container(
                width: 393,
                height: 40.h,
                color: Colors.yellow,
              ),
              SizedBox(
                height: 80.h,
              ),
              Container(
                width: 393,
                height: 40.h,
                color: Colors.green,
              ),
              SizedBox(
                height: 100.h,
              ),
              Container(
                width: 393,
                height: 40.h,
                color: Colors.lightBlue,
              ),
              SizedBox(
                height: 120.h,
              ),
              Container(
                width: 393,
                height: 40.h,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 23.h,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: const Text('ScreenUtilInit Class'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             color: Colors.amber[600],
//             height: 200.w,
//           ),
//           const Text('data'),
//         ],
//       ),
//     );
//   }
// }