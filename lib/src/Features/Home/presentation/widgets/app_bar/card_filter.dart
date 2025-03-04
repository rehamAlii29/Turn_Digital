import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class CardFilter extends StatelessWidget {
  const CardFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.toH(),
      padding: EdgeInsets.symmetric(vertical: 3.toH(), horizontal: 7.toW()),
      decoration: BoxDecoration(
          color: AppColors.get.white,
          borderRadius: BorderRadius.circular(50.toRad())),
      child: Row(
        children: [
          ImageGeneric.asset(
            url: Assets.filter,
            options: ImageOptions(width: 19, height: 19),
          ),
          6.ESW(),
          CustomText(
            "Filters",
            fontSize: 12,
            color: AppColors.get.primary,
          )
        ],
      ),
    );
  }
}
