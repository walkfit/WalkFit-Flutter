import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vertical_barchart/vertical-barchart.dart';
import 'package:vertical_barchart/vertical-barchartmodel.dart';
import 'package:walkfit/widgets/appBarWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaderBordPage extends StatelessWidget {
  const LeaderBordPage({super.key});

  @override
  Widget build(BuildContext context) {
    const int percent = 20;
    List<VBarChartModel> bardata = [
      VBarChartModel(
        colors: [Colors.amber, Colors.black],
        index: 0,
        label: '5.0',
        jumlah: 10.w,
        tooltip: "179개",
      ),
    ];

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: const AppBarWidget(title: '리더보드')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 280.5.w,
                    ),
                    Text(
                      '주간',
                      style: TextStyle(
                        color: const Color(0xFF212121),
                        fontSize: 16.sp,
                        letterSpacing: -0.32,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    SvgPicture.asset('assets/images/bxs_up-arrow.svg'),
                  ],
                ),
                SizedBox(height: 52.58.h),
                Text(
                  '평소보다 $percent% 더\n운동했어요',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontVariations: const [FontVariation('wght', 600)],
                    letterSpacing: -0.48,
                  ),
                ),
                SizedBox(height: 32.h),
                Container(
                  width: 350.w,
                  height: 352.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 28.h),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFFDFDFDF),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '칼로리',
                        style: TextStyle(
                          color: const Color(0xFF17215E),
                          fontSize: 24.sp,
                          fontVariations: const [FontVariation('wght', 600)],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      VerticalBarchart(
                        tooltipColor: const Color(0xff8e97a0),
                        data: bardata,
                        barSize: 18,
                        
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
