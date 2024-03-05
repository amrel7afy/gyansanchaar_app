import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/data/models/student_model.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view/attendance_view_widgets/table_check_boxes_row.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view_model/GetX/attendance_controller.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';

import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/constants/my_text_styles.dart';

class AttendanceTable extends GetWidget<AttendanceController> {
  const AttendanceTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.2, color: MyColors.kGreyColor),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: GetBuilder<AttendanceController>(
        init: AttendanceController(),
        builder: (logic) {
          return Table(
            columnWidths: const <int, TableColumnWidth>{
              0: FlexColumnWidth(),
              1: FlexColumnWidth(),
            },
            children: [
              _buildTableRow(['Student Name', 'Attendance']),
              for (int index = 0;
                  index <= logic.students.length - 1;
                  index++) ...[
                _buildTableRowWithCheckboxes(student: logic.students[index]),
              ]
            ],
          );
        },
      ),
    );
  }

  TableRow _buildTableRow(List<String> rowData) {
    return TableRow(
      children: rowData.map((data) {
        return TableCell(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              data,
              textAlign: TextAlign.center,
              style: MyTextStyles.mediumTextStyle18.copyWith(
                color: MyColors.kPrimaryColor,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  TableRow _buildTableRowWithCheckboxes({required StudentModel student}) {
    return TableRow(
      children: [
        TableCell(
          child: Container(
            alignment: Alignment.center,
            margin: student.isLastStudent
                ? const EdgeInsets.only(top: 5)
                : const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(width: 0.7, color: MyColors.kGreyColor),
            ),
            child: Text(
              student.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: MyTextStyles.mediumTextStyle20.copyWith(
                fontFamily: poppins,
              ),
            ),
          ),
        ),
        TableCheckBoxes(
          student: student,
        ),
      ],
    );
  }
}
