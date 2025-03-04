import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

import 'card_icon.dart';

class CardIconTitleSub extends StatelessWidget {
  final String icon;
  final String title;
  final String sub;

  const CardIconTitleSub(
      {super.key, required this.icon, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CardIcon(
          icon: icon,
        ),
        14.ESW(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              title,
              fontSize: 16,
            ),
            CustomText(
              sub,
              fontSize: 12,
              color: AppColors.get.tTFPrefixColor,
            )
          ],
        )
      ],
    );
  }
}
