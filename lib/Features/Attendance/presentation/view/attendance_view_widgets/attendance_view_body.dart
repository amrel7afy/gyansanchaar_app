import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view/attendance_view_widgets/attendance_table.dart';

import '../../../../../core/utils/constants/constants.dart';



class AttendanceViewBody extends StatelessWidget {
  const AttendanceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kLeftHomeViewPadding, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AttendanceTable()
              ],
            ),
          ),
        ),
      ],
    );
  }
}