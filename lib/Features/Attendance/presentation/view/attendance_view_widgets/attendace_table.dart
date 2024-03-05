import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';

import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/constants/my_text_styles.dart';

class AttendanceTable extends StatelessWidget {
  const AttendanceTable({Key? key});

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
      child: Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(),
          1: FlexColumnWidth(),
        },
        children: [
          _buildTableRow(['Student Name', 'Attendance']),
          _buildTableRowWithCheckboxes('Student 1'),
          _buildTableRowWithCheckboxes('Student 2'),
          _buildTableRowWithCheckboxes('Student 3'),
          _buildTableRowWithCheckboxes('Student 4'),
          _buildTableRowWithCheckboxes('Student 5'),
          _buildTableRowWithCheckboxes('Student 6'),
          _buildTableRowWithCheckboxes('Student 7'),
          _buildTableRowWithCheckboxes('Student 8'),
          _buildTableRowWithCheckboxes('Student 9'),
          _buildTableRowWithCheckboxes('Student 10', isLastRow: true),
        ],
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

  TableRow _buildTableRowWithCheckboxes(String studentName,
      {bool isLastRow = false}) {
    return TableRow(
      children: [
        TableCell(
          child: Container(
            alignment: Alignment.center,
            margin: isLastRow
                ? const EdgeInsets.only(top: 5)
                : const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(width: 0.7, color: MyColors.kGreyColor),
            ),
            child: Text(
              studentName,
              textAlign: TextAlign.center,
              style:
                  MyTextStyles.mediumTextStyle20.copyWith(fontFamily: poppins),
            ),
          ),
        ),
        TableCell(
          child: Container(
            margin: isLastRow
                ? const EdgeInsets.only(top: 5)
                : const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(width: 0.7, color: MyColors.kGreyColor),
            ),
            child: Row(
              children: [
                const Spacer(),
                buildCheckBoxItem(
                    letter: 'P', activeColor: MyColors.kGreenColor),
                const SizedBox(width: 10),
                buildCheckBoxItem(
                    letter: 'L', activeColor: MyColors.kPrimaryColor),
                const SizedBox(width: 10),
                buildCheckBoxItem(
                    letter: 'A', activeColor: MyColors.kExtraRedColor),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildCheckBoxItem({required String letter, required Color activeColor}) {
  return Row(
    children: [
      Text(
        letter,
        style: MyTextStyles.mediumTextStyle20.copyWith(color: activeColor),
      ),
      const SizedBox(width: 4),
      Theme(
        data: ThemeData(
          unselectedWidgetColor:
          MyColors.kPrimaryColor, // Change the border color here
        ),
        child: SizedBox(
          width: 25,
          height: 39,
          child: Checkbox(
            value: false,
            hoverColor:  MyColors.kGreyColor,

            checkColor: Colors.white,
            side: const BorderSide(color: MyColors.kGreyColor, width: 2.0),
            activeColor: activeColor,
            onChanged: (bool? value) {},
          ),
        ),
      ),
    ],
  );
}
