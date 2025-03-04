import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class CardIconTitle extends StatelessWidget {
  final String title;
  final String icon;

  const CardIconTitle({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageGeneric.asset(
          url: icon,
          options: const ImageOptions(
            width: 16,
            height: 16,
          ),
        ),
        5.ESW(),
        Expanded(
          child: CustomText(
            title,
            fontSize: 13,
            color: AppColors.get.subTitleDark,
            isOverFlow: true,
          ),
        )
      ],
    );
  }
}
