import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/data/models/student_model.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';

import 'check_box_item.dart';

class TableCheckBoxes extends StatefulWidget {
  final bool isLastRow;
   final AttendanceStatus attendanceStatus;

   const TableCheckBoxes({
    super.key,
    this.isLastRow = false,
    required this.attendanceStatus,
  });

  @override
  State<TableCheckBoxes> createState() => _TableCheckBoxesState();
}

class _TableCheckBoxesState extends State<TableCheckBoxes> {
   bool isPresent = false;

   bool isLate = false;

   bool isAbsent = false;

   checkAttendance(AttendanceStatus attendanceStatus) {
    bool value=true;
    switch (attendanceStatus) {
      case AttendanceStatus.present:
        setState(() {
          isPresent=value;
          isLate = !value;
          isAbsent = !value;
        });
        log('isPresent: $isPresent');

      case AttendanceStatus.late:
        setState(() {
          isLate = value;
          isPresent=!value;
          isAbsent = !value;
        });
        log('isLate: $isLate');
      case AttendanceStatus.absent:
        setState(() {
          isAbsent = value;
          isLate = !value;
          isPresent=!value;
        });
        log('isAbsent: $isAbsent');

    }
  }
@override
  void initState() {
  checkAttendance(widget.attendanceStatus);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return TableCell(
      child: Container(
        margin: widget.isLastRow
            ? const EdgeInsets.only(top: 5)
            : const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(width: 0.7, color: MyColors.kGreyColor),
        ),
        child: Row(
          children: [
            const Spacer(),
            buildCheckBoxItem(letter: 'P', activeColor: MyColors.kGreenColor,status: isPresent),
            const SizedBox(width: 10),
            buildCheckBoxItem(letter: 'L', activeColor: MyColors.kPrimaryColor,status: isLate),
            const SizedBox(width: 10),
            buildCheckBoxItem(
                letter: 'A', activeColor: MyColors.kExtraRedColor,status: isAbsent),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
