import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

class SeeMoreButton extends StatelessWidget {
  final  VoidCallback onTap;
  const SeeMoreButton({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'see more',
        style: MyTextStyles.mediumTextStyle14.copyWith(
          decoration: TextDecoration.underline,
          color: MyColors.kSeeMoreTextColor,
        ),
      ),
    );
  }
}