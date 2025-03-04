import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class CounterBadge extends StatelessWidget {
  final int counter;

  const CounterBadge({
    super.key,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14.toW(),
      height: 14.toH(),
      decoration: BoxDecoration(
          color: AppColors.get.primaryLighter,
          borderRadius: BorderRadius.circular(15.toRad())),
      child: Center(
        child: CustomText(
          counter.toString(),
          fontSize: 8,
          fontWeight: FW.medium,
          color: AppColors.get.white,
        ),
      ),
    );
  }
}
