import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Styles/Colors/app_colors.dart';

class TapBarOrganizer extends StatelessWidget {
  const TapBarOrganizer({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(text: "About"),
        Tab(text: "Events"),
        Tab(text: "Reviews"),
      ],
    );
  }
}
