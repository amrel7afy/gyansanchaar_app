import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/home_view_widgets/actions_card.dart';
import 'package:gyansanchaar_app/core/utils/AppRouter.dart';
import 'package:gyansanchaar_app/core/utils/constants/methods.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_assets.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class ActionsSection extends StatelessWidget {
  const ActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 35),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                ActionCard(
                  backGroundColor: MyColors.kPrimaryColor,
                  title: 'Syllabus',
                  icon: MyAssets.syllabus,
                  textColor: Colors.white,
                  onTap: () {
                    navigateTo(context, AppRouter.syllabusView);
                  },
                ),
                const HorizontalSpacer(10),
                ActionCard(
                  backGroundColor: MyColors.kCardColor,
                  title: 'Schedule',
                  icon: MyAssets.schedule,
                  textColor: Colors.black,
                  onTap: () {
                    navigateTo(context, AppRouter.scheduleView);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                ActionCard(
                  backGroundColor: MyColors.kCardColor,
                  title: 'Assignments',
                  icon: MyAssets.assignments,
                  textColor: Colors.black,
                  onTap: () {
                    navigateTo(context, AppRouter.assignmentsView);
                  },
                ),
                const HorizontalSpacer(10),
                ActionCard(
                  backGroundColor: MyColors.kPrimaryColor,
                  title: 'Tests',
                  icon: MyAssets.tests,
                  textColor: Colors.white,
                  onTap: () {
                    navigateTo(context, AppRouter.testsView);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                ActionCard(
                  backGroundColor: MyColors.kPrimaryColor,
                  title: 'Attendance',
                  icon: MyAssets.attendance,
                  textColor: Colors.white,
                  onTap: () {
                    navigateTo(context, AppRouter.attendanceView);
                  },
                ),
                const HorizontalSpacer(10),
                ActionCard(
                  backGroundColor: MyColors.kCardColor,
                  title: 'Extra',
                  icon: MyAssets.extra,
                  textColor: Colors.black,
                  onTap: () {
                    navigateTo(context, AppRouter.extraView);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
