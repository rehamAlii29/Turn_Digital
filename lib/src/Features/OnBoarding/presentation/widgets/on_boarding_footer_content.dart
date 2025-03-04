import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:get/get.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import '../manager/onboarding_controller.dart';
import 'imports_widgets_onboarding.dart';

class OnBoardingFooterContent extends StatelessWidget {
  final String title;
  final String subtitle;

  const OnBoardingFooterContent({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          title,
          fontSize: 22,
          color: AppColors.get.white,
          textAlign: TextAlign.center,
        ),
        16.ESH(),
        CustomText(subtitle,
            fontSize: 15,
            color: AppColors.get.white,
            textAlign: TextAlign.center),
        43.ESH(),
        GetBuilder<OnBoardingController>(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: _.onSkip,
                child: CustomText(
                  'Skip',
                  fontSize: 18,
                  color: AppColors.get.white.withOpacity(.5),
                  fontWeight: FW.medium,
                ),
              ),
              const OnBoardingIndicator(),
              InkWell(
                onTap: _.onNextChanged,
                child: CustomText(
                  'Next',
                  fontSize: 18,
                  color: AppColors.get.white,
                  fontWeight: FW.medium,
                ),
              ),
            ],
          );
        })
      ],
    );
  }
}
