import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 68,
      child: DatePicker(
        width: 50,
        DateTime.now(),
        onDateChange: (date) {},
        dayTextStyle: MyTextStyles.semiBoldTextStyle12
            .copyWith(color: Colors.black.withOpacity(0.3)),
        selectionColor: MyColors.kRedColor,
        dateTextStyle: MyTextStyles.boldTextStyle16,
        daysCount: 7,
      ),
    );
  }
}