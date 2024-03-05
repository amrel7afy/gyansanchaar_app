import 'package:gyansanchaar_app/core/utils/AppRouter.dart';

import 'package:flutter/material.dart';




import 'core/utils/constants/theme.dart';
//dart fix --apply --code=unused_import
void main(){
  runApp(const GyansanchaarApp());
}

class GyansanchaarApp extends StatelessWidget{
  const GyansanchaarApp({super.key});

  @override
  Widget build(BuildContext context) {
  return  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: themeData,
    onGenerateRoute: AppRouter().generateRoute,
  );
  }
}

/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Student Attendance Table'),
          ),
          body: AttendanceTable(),
        ),
      ),
    );
  }
}

class AttendanceTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(), // FlexColumnWidth for the first column
        1: FlexColumnWidth(), // FlexColumnWidth for the second column
      },
      children: [
        _buildTableRow(['Student Name', 'Attendance']),
        _buildTableRowWithCheckboxes('Student 1'),
        _buildTableRowWithCheckboxes('Student 2'),
        _buildTableRowWithCheckboxes('Student 3'),
        _buildTableRowWithCheckboxes('Student 4'),
        _buildTableRowWithCheckboxes('Student 5'),
        _buildTableRowWithCheckboxes('Student 6'),
        // Add more rows as needed
      ],
    );
  }

  TableRow _buildTableRow(List<String> rowData) {
    return TableRow(
      children: rowData.map((data) {
        return TableCell(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(data, textAlign: TextAlign.center,style: MyTextStyles.mediumTextStyle18.copyWith(
              color: MyColors.kPrimaryColor
            ),),
          ),
        );
      }).toList(),
    );
  }

  TableRow _buildTableRowWithCheckboxes(String studentName) {
    return TableRow(
      children: [
        TableCell(
          child:
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(5),
                  decoration:  BoxDecoration(
                    border: Border.all()
                  ),
                  child: Text(studentName, textAlign: TextAlign.center)),
        ),
        TableCell(
          child:  Container(
            margin: EdgeInsets.symmetric(vertical: 10),

            decoration:  BoxDecoration(
                border: Border.all()
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('P'),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                ),
                const SizedBox(width: 8),
                const Text('L'),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                ),
                const SizedBox(width: 8),
                const Text('A'),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

 */