import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/schedule/presentation/view/widgets/custom_data_picker.dart';
import 'package:gyansanchaar_app/core/utils/constants/constants.dart';

class ScheduleViewBody extends StatelessWidget {
  const ScheduleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding:
                EdgeInsets.only(left: kLeftHomeViewPadding, top: 5, right: 20),
            child: Column(
              children: [
                CustomDatePicker(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
