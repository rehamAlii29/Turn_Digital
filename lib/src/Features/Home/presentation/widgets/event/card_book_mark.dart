import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';

import '../../../../../Core/Styles/Colors/app_colors.dart';

class CardBookMark extends StatelessWidget {
  final Color? iconColor;
  final double? width;
  final double? height;

  const CardBookMark({super.key, this.iconColor, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.toW(), vertical: 8.toH()),
      decoration: BoxDecoration(
          color: AppColors.get.white.withOpacity(.7),
          borderRadius: BorderRadius.circular(7.toRad())),
      child: Center(
        child: Icon(
          Icons.bookmark,
          color: iconColor ?? AppColors.get.eventTitles,
          size: 20,
        ),
      ),
    );
  }
}
