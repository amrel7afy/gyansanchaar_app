import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view/attendance_view_widgets/attendance_table.dart';
import 'package:gyansanchaar_app/Features/Attendance/presentation/view/attendance_view_widgets/chip_list.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/custom_button.dart';

import '../../../../../core/utils/constants/constants.dart';


class AttendanceViewBody extends StatelessWidget {
  const AttendanceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kLeftHomeViewPadding, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChipList(),
                const SizedBox(height: 20,),
                const AttendanceTable(),
                const SizedBox(height: 20,),
                 Row(
                  children: [
                    InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        // Adjust the padding as needed
                        decoration: BoxDecoration(
                          border: Border.all(color: MyColors.kGreyColor), // Adjust the border color as needed
                          borderRadius: BorderRadius.circular(10), // Match the border radius above
                        ),
                        child:  Text(
                          '13/4/24',
                          style: MyTextStyles.boldTextStyle24.copyWith(color: MyColors.kPrimaryColor)
                        ),
                      ),
                    ),
                    const SizedBox(width: 2,),
                    InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 3),
                        // Adjust the padding as needed
                        decoration: BoxDecoration(
                          color: MyColors.kMapPrimaryColor[50],
                          border: Border.all(color: MyColors.kGreyColor), // Adjust the border color as needed
                          borderRadius: BorderRadius.circular(10), // Match the border radius above
                        ),
                        child:  const Icon(FontAwesomeIcons.caretDown,color: MyColors.kPrimaryColor,size: 28,),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: getWidth(context)*0.34,
                      height: 49,
                      child: CustomButton(textStyle: MyTextStyles.boldTextStyle18.copyWith(
                        color: Colors.white
                      ), text: 'Submit', backGroundColor: MyColors.kPrimaryColor, onPressed: () {  },borderRadius: BorderRadius.circular(12),),
                    )
                  ],
                ),


              ],
            ),
          ),
        ),
      ],
    );
  }
}

