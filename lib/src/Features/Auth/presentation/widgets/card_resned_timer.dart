import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';

import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class CardResendTimer extends StatelessWidget {
  final String timer;

  const CardResendTimer({super.key, required this.timer});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          "Code Resend In  ",
          fontSize: 15,
        ),
        CustomText(
          "0:$timer",
          fontSize: 15,
          color: AppColors.get.primary,
        )
      ],
    );
  }
}
