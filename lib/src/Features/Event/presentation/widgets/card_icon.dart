import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/Src/generic_image_lib.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';

class CardIcon extends StatelessWidget {
  final String icon;

  const CardIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.toH(),
      height: 48.toH(),
      decoration: BoxDecoration(
        color: AppColors.get.orangeLight,
        borderRadius: BorderRadius.circular(12.toRad()),
      ),
      child: Center(
        child: ImageGeneric.asset(
          url: icon,
          options: ImageOptions(
            width: 30.toH(),
            height: 30.toH(),
          ),
        ),
      ),
    );
  }
}
