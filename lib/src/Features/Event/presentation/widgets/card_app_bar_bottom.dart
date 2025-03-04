import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/custom_rounded_button.dart';

import '../../../Home/presentation/widgets/event/card_going_overlay.dart';

class CardAppBarBottom extends StatelessWidget {
  final int numberOfGoing;

  const CardAppBarBottom({super.key, required this.numberOfGoing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.toW()),
      child: Container(
        padding: EdgeInsets.all(14.toH()),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.toRad()),
          color: AppColors.get.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: SectionGoingOverLay(
                count: numberOfGoing,
              ),
            ),
            ButtonDefault(
              height: 28,
              width: 67,
              borderRadius: 7,
              title: "Invite",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
