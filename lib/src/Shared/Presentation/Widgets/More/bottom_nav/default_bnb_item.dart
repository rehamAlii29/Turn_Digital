import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Spaces&Dividers/spaces.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class DefaultBottomNavItem {
  DefaultBottomNavItem._();

  static BottomNavigationBarItem defaultBottomNavItem({
    required String label,
    required String image,
    // int? notificationCount,
  }) {
    return BottomNavigationBarItem(
      icon: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            children: [
              ImageIcon(
                AssetImage(image),
                color: AppColors.get.unSelIcon,
                size: 23.toH(),
                // semanticLabel: label,
              ),
              // YSpace.light,
              CustomText.subtitle(
                label,
                fontSize: 11,
                fontWeight: FW.semiBold,
                color: AppColors.get.unSelIcon,
              ),
            ],
          ),
          // if (notificationCount != null && notificationCount != 0)
          //   NotificationCircle(
          //       count: notificationCount,
          //       radius: 8.2.r,
          //       padding: const EdgeInsets.only(bottom: 2.0)),
        ],
      ),
      activeIcon: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            children: [
              ImageIcon(
                AssetImage(image),
                size: 26.toH(),
                color: AppColors.get.bnbSelectedItem,
                // semanticLabel: label,
              ),

              YSpace.light,
              CustomText(
                label,
                fontSize: 11,
                fontWeight: FW.semiBold,
                color: AppColors.get.bnbSelectedItem,
              ),
              // Icon(CupertinoIcons.toH()ome),
            ],
          ),
          // if (notificationCount != null && notificationCount != 0)
          //   NotificationCircle(
          //       count: notificationCount,
          //       radius: 9.2.r,
          //       padding: const EdgeInsets.only(bottom: 2.0)),
        ],
      ),
      label: "",
    );
  }
}
