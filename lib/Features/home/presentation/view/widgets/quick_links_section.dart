import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

class QuickLinksSection extends StatelessWidget {
  const QuickLinksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 52, left: 22),
          child: Row(
            children: [
              const Text(
                'Quick Links ',
                style: MyTextStyles.boldTextStyle24,
              ),
              const Spacer(),
              Text(
                'see more',
                style: MyTextStyles.mediumTextStyle14.copyWith(
                    decoration: TextDecoration.underline,
                    color: const Color(0xff0D173B)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
