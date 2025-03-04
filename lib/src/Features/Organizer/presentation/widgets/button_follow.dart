import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class ButtonRightIcon extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String icon;
  final Color titleColor;
  final Color borderColor;
  final VoidCallback onTap;

  const ButtonRightIcon({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.icon,
    required this.titleColor,
    required this.borderColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13.toH()),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10.toRad()),
          border: Border.all(color: borderColor, width: 1.5.toH()),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageGeneric.asset(
              url: icon,
              options: const ImageOptions(width: 22, height: 22),
            ),
            14.ESW(),
            CustomText(
              title,
              color: titleColor,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
