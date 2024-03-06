import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/constants.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: kLeftHomeViewPadding, top: 5),
            child: Center(
              child: Text('Profile'),
            ),
          ),
        ),
      ],
    );
  }
}
