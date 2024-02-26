import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyansanchaar_app/Features/home/data/model/quick_link_model.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/quick_link_card.dart';
import 'package:gyansanchaar_app/Features/home/presentation/view/widgets/see_more_text.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_text_styles.dart';

class QuickLinksSection extends StatelessWidget {
  const QuickLinksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 52, left: 22),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Quick Links ',
                style: MyTextStyles.boldTextStyle24,
              ),
              const Spacer(),
              SeeMoreButton(onTap: (){},),
            ],
          ),
           QuickLinksCard(quickLinksCardModel: QuickLinksCardModel.quickLinksCardModels[0]),
           QuickLinksCard(quickLinksCardModel: QuickLinksCardModel.quickLinksCardModels[1]),
           QuickLinksCard(quickLinksCardModel: QuickLinksCardModel.quickLinksCardModels[2]),
           QuickLinksCard(quickLinksCardModel: QuickLinksCardModel.quickLinksCardModels[3]),
        ],
      ),
    );
  }
}


