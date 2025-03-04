import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class CardCurrentLocation extends StatelessWidget {
  const CardCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              "Current location",
              fontSize: 12,
              color: AppColors.get.white,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: AppColors.get.white,
            )
          ],
        ),
        CustomText(
          "New York,USA",
          fontSize: 13,
          fontWeight: FW.medium,
          color: AppColors.get.white,
        )
      ],
    );
  }
}
