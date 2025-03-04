import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class CardPremuim extends StatelessWidget {
  const CardPremuim({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13.toH(), horizontal: 17.toW()),
        decoration: BoxDecoration(
            color: AppColors.get.primary.withOpacity(.5),
            borderRadius: BorderRadius.circular(8.toRad())),
        child: Row(
          children: [
            ImageGeneric.asset(
              url: Assets.premuim,
              options: const ImageOptions(width: 20, height: 20),
            ),
            11.ESW(),
            CustomText(
              "Upgrade Pro",
              fontSize: 14,
              color: AppColors.get.primary,
            )
          ],
        ),
      ),
    );
  }
}
