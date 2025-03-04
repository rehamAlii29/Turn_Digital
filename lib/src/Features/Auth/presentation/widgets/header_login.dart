import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';

import '../../../../Core/Constants/Strings/assets.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/Src/generic_image_lib.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/Src/options/image_options.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageGeneric.asset(
          url: Assets.splashLogo,
          options: const ImageOptions(height: 62),
        ),
        70.ESH(),
        const Align(
          alignment: Alignment.bottomLeft,
          child: CustomText(
            "Sign In",
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
