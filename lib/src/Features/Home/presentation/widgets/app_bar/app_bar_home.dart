import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';

import 'app_bar_home_content.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppBarHome({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 179.toH(),
      padding: EdgeInsets.only(top: 44.toH(), right: 24.toW(), left: 24.toW()),
      decoration: BoxDecoration(
          color: AppColors.get.primary,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(33.toRad()),
              bottomRight: Radius.circular(33.toRad()))),
      child: AppBarHomeContent(
        scaffoldKey: scaffoldKey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(179.toH());
}
