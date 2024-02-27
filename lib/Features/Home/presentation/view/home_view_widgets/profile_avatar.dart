import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,

  });

  final String img =
      'https://th.bing.com/th/id/OIP.HkIbhO8npHy_0T2VN9fTewHaMg?w=192&h=324&c=7&r=0&o=5&dpr=1.3&pid=1.7';


  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: MyColors.kPrimaryColor,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 29,
              backgroundImage: NetworkImage(img),
            ),
          ),
        ),
         Positioned(
            bottom: -10,
            child:SvgPicture.asset('assets/images/Vector.svg'))
      ],
    );
  }
}
