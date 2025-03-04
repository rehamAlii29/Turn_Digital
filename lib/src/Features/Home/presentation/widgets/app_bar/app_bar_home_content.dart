import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/app_bar/app_bar_home_header.dart';

import '../slider_card_type.dart';
import 'app_bar_search.dart';

class AppBarHomeContent extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppBarHomeContent({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            AppBarHomeHeader(
              scaffoldKey: scaffoldKey,
            ),
            const AppBarSearch(),
          ],
        ),
        const Positioned(
          bottom: -10,
          child: SliderCardType(),
        ),
      ],
    );
  }
}
