import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view/attendance_view_widgets/attendance_view_body.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/custom_app_bar.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(context, title: 'Attendance'),
      body: const SafeArea(child: AttendanceViewBody()),
    );
  }
}
