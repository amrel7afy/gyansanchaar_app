import 'package:flutter/material.dart';


import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:gyansanchaar_app/Features/Schedule/presentation/view_model/GetX/schedule_controller.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScheduleController>(
      builder: (logic) {
        return SizedBox(
          height: 68,
          child: DatePicker(
            initialSelectedDate: DateTime.now(),
            width: 48,
            DateTime.now(),
            onDateChange: (date) {
              logic.changeDate(date);

            },
            dayTextStyle: MyTextStyles.semiBoldTextStyle12
                .copyWith(color: MyColors.kGreyColor),
            selectionColor: MyColors.kRedColor,
            dateTextStyle: MyTextStyles.boldTextStyle16,
            daysCount: 7,
          ),
        );
      },
    );
  }
}