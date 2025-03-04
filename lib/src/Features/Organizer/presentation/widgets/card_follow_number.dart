import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class CardFollowNumber extends StatelessWidget {
  final int number;
  final String title;

  const CardFollowNumber(
      {super.key, required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          number.toString(),
          fontSize: 16,
          fontWeight: FW.medium,
        ),
        10.ESH(),
        CustomText(
          title,
          color: AppColors.get.tTFPrefixColor,
          fontSize: 14,
        )
      ],
    );
  }
}
