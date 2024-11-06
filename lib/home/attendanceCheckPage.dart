import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:walkfit/widgets/appBarWidget.dart';
import 'package:walkfit/widgets/bottomBarWidget.dart';

class AttendanceCheckPage extends StatelessWidget {
  const AttendanceCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(58.h),
        child: const AppBarWidget(title: '출석체크'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Stack(
          children: [
            SizedBox(height: 54.6.h, width: 400),
            Column(
              children: [
                SizedBox(height: 44.h),
                TableCalendar(
                  daysOfWeekHeight: 42,
                  locale: 'ko-KR',
                  focusedDay: DateTime.now(),
                  firstDay: DateTime(2023),
                  lastDay: DateTime(2025),
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false, // 월/주 버튼 여부
                    leftChevronVisible: false,
                    titleCentered: true,
                    titleTextFormatter: (date, locale) => // 타이틀 날짜 형태
                        DateFormat.M(locale).format(date),
                    titleTextStyle: TextStyle(
                      color: const Color(0xFF212121),
                      fontSize: 18.sp,
                      fontVariations: const [FontVariation('wght', 600)],
                    ),
                    rightChevronPadding: EdgeInsets.zero,
                    rightChevronIcon:
                        SvgPicture.asset('assets/images/bxs_up-arrow.svg'),
                  ),
                  calendarStyle: CalendarStyle(
                    defaultTextStyle: TextStyle(
                      color: const Color(0xFF212F83),
                      fontSize: 16.sp,
                      fontVariations: const [FontVariation('wght', 900)],
                    ),
                    weekendTextStyle: TextStyle(
                      color: const Color(0xFF212F83),
                      fontSize: 16.sp,
                      fontVariations: const [FontVariation('wght', 900)],
                    ),
                    todayTextStyle: const TextStyle(
                      color: Color(0xFF212F83),
                      fontVariations: [FontVariation('wght', 900)],
                    ),
                    todayDecoration: const ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(color: Color(0xFF212F83)),
                      ),
                    ),
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      color: const Color(0xFF212121),
                      fontSize: 16.sp,
                      fontVariations: const [FontVariation('wght', 500)],
                    ),
                    weekendStyle: TextStyle(
                      color: const Color(0xFF212121),
                      fontSize: 16.sp,
                      fontVariations: const [FontVariation('wght', 500)],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
