import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

import 'crad_going.dart';

class SectionGoingOverLay extends StatelessWidget {
  final int count;

  const SectionGoingOverLay({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: List.generate(
            3,
            (index) => CardGoing(
              index: index,
              image:
                  "https://images.pexels.com/photos/3992656/pexels-photo-3992656.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            ),
          ),
        ),
        10.ESW(),
        CustomText(
          "+ $count Going",
          fontSize: 12,
          fontWeight: FW.semiBold,
          color: AppColors.get.primary,
        )
      ],
    );
  }
}
