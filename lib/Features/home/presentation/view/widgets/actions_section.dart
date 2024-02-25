import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/actions_card.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_assets.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class ActionsSection extends StatelessWidget {
  const ActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20,right: 35),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                ActionCard(
                  backGroundColor: MyColors.kPrimaryColor,
                  title: 'Syllabus',
                  icon: MyAssets.syllabus,
                  textColor: Colors.white,
                ),
                HorizontalSpacer(10),
                ActionCard(
                  backGroundColor: MyColors.kCardColor,
                  title: 'Schedule',
                  icon: MyAssets.schedule,
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                ActionCard(
                  backGroundColor: MyColors.kCardColor,
                  title: 'Assignments',
                  icon: MyAssets.assignments,
                  textColor: Colors.black,
                ),
                HorizontalSpacer(10),
                ActionCard(
                  backGroundColor: MyColors.kPrimaryColor,
                  title: 'Tests',
                  icon: MyAssets.tests,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                ActionCard(
                  backGroundColor: MyColors.kPrimaryColor,
                  title: 'Attendance',
                  icon: MyAssets.attendance,
                  textColor: Colors.white,
                ),
                HorizontalSpacer(10),
                ActionCard(
                  backGroundColor: MyColors.kCardColor,
                  title: 'Extra',
                  icon: MyAssets.extra,
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
