import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gyansanchaar_app/Features/schedule/presentation/view/widgets/custom_data_picker.dart';
import 'package:gyansanchaar_app/Features/schedule/presentation/view/widgets/schedule_view_app_bar.dart';
import 'package:gyansanchaar_app/Features/schedule/presentation/view/widgets/time_line_section.dart';
import 'package:gyansanchaar_app/core/utils/constants/constants.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class ScheduleViewBody extends StatelessWidget {
  const ScheduleViewBody({super.key});

  final EdgeInsets padding =
      const EdgeInsets.only(left: kLeftHomeViewPadding, top: 5, right: 20);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: padding,
            child: const Column(
              children: [
                ScheduleViewAppBar(),
                VerticalSpacer(8),
                CustomDatePicker(),
                VerticalSpacer(10),
              ],
            ),
          ),
        ),

        TimeLineSection(padding: padding)
      ],
    );
  }
}
