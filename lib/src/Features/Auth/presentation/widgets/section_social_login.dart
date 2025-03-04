import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Auth/presentation/widgets/button_social.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class SectionSocialLogin extends StatelessWidget {
  const SectionSocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.toW()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            "OR",
            color: AppColors.get.subTitle,
            fontSize: 16,
            fontWeight: FW.medium,
          ),
          6.ESH(),
          ButtonSocial(
              onTap: () {}, title: "Login With Google", icon: Assets.gmail),
          17.ESH(),
          ButtonSocial(
              onTap: () {}, title: "Login With FaceBook", icon: Assets.fb)
        ],
      ),
    );
  }
}
