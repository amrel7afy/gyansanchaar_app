import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/my_colors.dart';

class ChipList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return
              CustomChip(label:  'Class ${index + 1}',textColor: index == 0 ? MyColors.kPrimaryColor:Colors.black);
          })

      ,
    );
  }
}

class CustomChip extends StatelessWidget {
  final String label;
  final Color textColor;


  const CustomChip({super.key, required this.label, required this.textColor});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8.0), // Adjust the padding as needed
          decoration: BoxDecoration(
            border: Border.all(color: textColor), // Adjust the border color as needed
            borderRadius: BorderRadius.circular(8.0), // Match the border radius above
          ),
          child: Text(
            label,
            style: TextStyle(
              color: textColor, // Adjust the text color as needed
            ),
          ),
        ),
      ),
    );
  }
}