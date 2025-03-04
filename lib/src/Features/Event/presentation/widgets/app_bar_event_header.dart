import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/event/card_book_mark.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class AppBarEventHeader extends StatelessWidget {
  const AppBarEventHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            NavigatorService().back();
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColors.get.white,
          ),
        ),
        13.ESW(),
        Expanded(
          child: CustomText(
            "Event Details",
            color: AppColors.get.white,
            fontSize: 24,
          ),
        ),
        CardBookMark(
          iconColor: AppColors.get.white,
        )
      ],
    );
  }
}
