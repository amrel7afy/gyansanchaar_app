import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/home_view_widgets/actions_section.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/home_view_widgets/home_view_app_bar.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/home_view_widgets/schedule_section.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/home_view_widgets/subjcets_section.dart';
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
                VerticalSpacer(2),
                SubjectsSection(),
                VerticalSpacer(2.5),
                ScheduleSection(),
                VerticalSpacer(4),
                QuickLinksSection(),
                VerticalSpacer(2),
                ActionsSection(),
                VerticalSpacer(2),
              ],
            ),
          ),
        ),

      ],
    );
  }
}

