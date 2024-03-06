import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyansanchaar_app/Features/Bottom%20Nav%20Bar/presentation/view_model/GetX/bottom_nav_controller.dart';
import 'package:gyansanchaar_app/core/utils/constants/my_colors.dart';

class BottomNavBarView extends StatelessWidget {
  final TextStyle unselectedLabelStyle = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
  const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  const BottomNavBarView({super.key});


  @override
  Widget build(BuildContext context) {
    BottomNavBarController bottomNavController = Get.put(
        BottomNavBarController());
    return GetBuilder<BottomNavBarController>(builder: (logic) {
      return Scaffold(
        bottomNavigationBar: buildBottomNavigationMenu(
            context, bottomNavController),
        body: IndexedStack(
            index: bottomNavController.tabIndex.value,
            children: bottomNavController.views
        ),
      );
    });
  }

  buildBottomNavigationMenu(context,
      BottomNavBarController bottomNavBarController) {
    return
      Obx(() {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: MyColors.kPrimaryColor,
          unselectedItemColor: Colors.black,
          onTap: bottomNavBarController.changeTabIndex,
          currentIndex: bottomNavBarController.tabIndex.value,
          items: bottomNavBarController.navBarItems,
        );
      });
  }
}