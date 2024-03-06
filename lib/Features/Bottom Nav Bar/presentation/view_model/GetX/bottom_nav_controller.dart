import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gyansanchaar_app/Features/Blog/presentation/view/blog_view.dart';
import 'package:gyansanchaar_app/Features/Course/presentation/view/course_view.dart';
import 'package:gyansanchaar_app/Features/Home/presentation/view/home_view.dart';
import 'package:gyansanchaar_app/Features/Profile/presentation/view/profile_view.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_assets.dart';

class BottomNavBarController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }

  final List<Widget> views = [
    const HomeView(),
    const CourseView(),
    const BlogView(),
    const ProfileView()
  ];

  final List<BottomNavigationBarItem> navBarItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(MyAssets.homeFilled,),
      label: 'Home',

    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(MyAssets.video,),
      label: 'Courses',

    ),

    BottomNavigationBarItem(
      icon: SvgPicture.asset(MyAssets.settings,),
      label: 'Settings',

    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(MyAssets.profile,),
      label: 'Profile',

    ),
  ].obs;
}
