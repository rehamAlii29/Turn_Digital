import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';

import 'drawer/card_premuim.dart';
import 'drawer/card_user_info_drawer.dart';
import 'drawer/list_card_icon_drawer.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 251.toW(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 45.toH(),
          horizontal: 24.toW(),
        ),
        child: ListView(
          children: [
            const CardUserInfoDrawer(),
            48.ESH(),
            const ListCardIconDrawer(),
            100.ESH(),
            const CardPremuim()
          ],
        ),
      ),
    );
  }
}
