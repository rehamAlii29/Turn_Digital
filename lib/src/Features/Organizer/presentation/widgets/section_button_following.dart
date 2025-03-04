import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';

import 'button_follow.dart';

class SectionButtonFollowing extends StatelessWidget {
  const SectionButtonFollowing({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.toH(),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              child: ButtonRightIcon(
            onTap: () {},
            titleColor: AppColors.get.white,
            borderColor: AppColors.get.primary,
            backgroundColor: AppColors.get.primary,
            title: "Follow",
            icon: Assets.follow,
          )),
          17.ESW(),
          Expanded(
              child: ButtonRightIcon(
            onTap: () {},
            titleColor: AppColors.get.primary,
            borderColor: AppColors.get.primary,
            backgroundColor: AppColors.get.white,
            title: "Message",
            icon: Assets.messageColor,
          )),
        ],
      ),
    );
  }
}
