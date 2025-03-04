import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class ButtonSocial extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String icon;
  final Color? backGroundColor;
  final Color? titleColor;

  const ButtonSocial(
      {super.key,
      required this.onTap,
      required this.title,
      required this.icon,
      this.backGroundColor,
      this.titleColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // width: 273.toW(),
        padding: EdgeInsets.symmetric(vertical: 17.toH(), horizontal: 36.toW()),
        decoration: BoxDecoration(
          color: backGroundColor ?? AppColors.get.white,
          borderRadius: BorderRadius.circular(12.toRad()),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageGeneric.asset(
              url: icon,
              options: const ImageOptions(height: 26, width: 26),
            ),
            20.ESW(),
            CustomText(
              title,
              fontSize: 16,
              fontWeight: FW.regular,
              color: titleColor,
            )
          ],
        ),
      ),
    );
  }
}
