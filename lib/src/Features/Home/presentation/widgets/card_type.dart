import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Home/data/models/type_model.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';

import '../../../../Core/Constants/Strings/assets.dart';
import '../../../../Core/Styles/Colors/app_colors.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/Src/generic_image_lib.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class CardType extends StatelessWidget {
  final TypeModel type;

  const CardType({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39.toH(),
      padding: EdgeInsets.symmetric(vertical: 8.toH(), horizontal: 16.toW()),
      decoration: BoxDecoration(
          color: type.color, borderRadius: BorderRadius.circular(20.toRad())),
      child: Row(
        children: [
          ImageGeneric.asset(
            url: type.icon,
            options: const ImageOptions(width: 17, height: 17),
          ),
          8.ESW(),
          CustomText(
            type.title,
            fontSize: 15,
            color: AppColors.get.white,
          )
        ],
      ),
    );
  }
}
