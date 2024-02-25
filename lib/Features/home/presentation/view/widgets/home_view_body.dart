import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/actions_section.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/home_view_app_bar.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/schedule_section.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/subjcets_section.dart';
import 'package:gyansanchaar_app/core/utils/constants/constants.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

import 'quick_links_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: kLeftHomeViewPadding, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeViewAppBar(),
                VerticalSpacer(23),
                SubjectsSection(),
                VerticalSpacer(28),
                ScheduleSection(),
                VerticalSpacer(43),
                QuickLinksSection(),
                VerticalSpacer(23),
                ActionsSection(),
                VerticalSpacer(23),
              ],
            ),
          ),
        ),

      ],
    );
  }
}

