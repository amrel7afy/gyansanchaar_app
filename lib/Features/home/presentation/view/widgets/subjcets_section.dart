import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/subject_card.dart';
import 'package:gyansanchaar_app/Features/home/data/model/subject_card_model.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';
import 'package:gyansanchaar_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';

class SubjectsSection extends StatelessWidget {
  const SubjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Subjects',
          style: MyTextStyles.boldTextStyle24,
        ),
        Text(
          'Recommendations for you',
          style: MyTextStyles.boldTextStyle14
              .copyWith(color: MyColors.kGreyColor),
        ),
        const VerticalSpacer(16),
        SizedBox(
          height: 119,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: SubjectCardModel.cardsModels.length,
              itemBuilder: (context, index) {
                return  SubjectCard(subjectCardModel: SubjectCardModel.cardsModels[index],);
              }),
        )
      ],
    );
  }
}


