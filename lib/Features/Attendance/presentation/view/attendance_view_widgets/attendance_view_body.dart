import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view/attendance_view_widgets/attendance_table.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view/attendance_view_widgets/bottom_actions.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view/attendance_view_widgets/chip_list.dart';

class AttendanceViewBody extends StatelessWidget {
  const AttendanceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 18),
        ChipList(),
        const SizedBox(height: 20),
        const Expanded(child: SingleChildScrollView(child: AttendanceTable())),
        const SizedBox(height: 5),
        const BottomActions(),
        const SizedBox(height: 10),
      ],
    );
  }
}
