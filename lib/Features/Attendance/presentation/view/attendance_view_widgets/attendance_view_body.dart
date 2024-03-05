import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view/attendance_view_widgets/attendace_table.dart';

import '../../../../../core/utils/constants/constants.dart';

class AttendanceViewBody extends StatefulWidget {
  const AttendanceViewBody({super.key});

  @override
  State<AttendanceViewBody> createState() => _AttendanceViewBodyState();
}

class _AttendanceViewBodyState extends State<AttendanceViewBody> {
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