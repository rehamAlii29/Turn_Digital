import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';

import '../event/card_current_location.dart';

class AppBarHomeHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppBarHomeHeader({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: ImageGeneric.asset(
            url: Assets.drawer,
            options: ImageOptions(width: 24, height: 20),
          ),
        ),
        const CardCurrentLocation(),
        InkWell(
          onTap: () {},
          child: ImageGeneric.asset(
            url: Assets.notification,
            options: const ImageOptions(width: 36, height: 36),
          ),
        ),
      ],
    );
  }
}
