import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:get/get.dart';
import '../../../../Core/Constants/Strings/assets.dart';
import '../../../../Shared/Presentation/Widgets/More/bottom_nav/default_bnb_item.dart';
import '../manager/base_controller.dart';

class BaseBottomNavBar extends StatelessWidget {
  const BaseBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BaseController>(builder: (controller) {
      return BottomNavigationBar(
        onTap: controller.changeTabIndex,
        currentIndex: controller.tabIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.get.white,
        selectedItemColor: AppColors.get.primary,
        unselectedItemColor: AppColors.get.unSelIcon,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          DefaultBottomNavItem.defaultBottomNavItem(
            label: "Explore",
            image: Assets.explore,
          ),
          DefaultBottomNavItem.defaultBottomNavItem(
            label: "Events",
            image: Assets.event,
          ),
          const BottomNavigationBarItem(
            label: '',
            icon: SizedBox.shrink(),
          ),
          DefaultBottomNavItem.defaultBottomNavItem(
            label: "Map",
            image: Assets.map,
          ),
          DefaultBottomNavItem.defaultBottomNavItem(
            label: "Profile",
            image: Assets.profile,
          ),
        ],
      );
    });
  }
}
