import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';

import '../../data/models/onboarding_model.dart';
import 'on_boarding_footer_content.dart';

class OnBoardingFooter extends StatelessWidget {
  final OnBoardingModel data;

  const OnBoardingFooter({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 37.toH(), horizontal: 40.toW()),
      decoration: BoxDecoration(
          color: AppColors.get.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45.toRad()),
            topRight: Radius.circular(45.toRad()),
          )),
      child: OnBoardingFooterContent(
        title: data.title ?? "",
        subtitle: data.body ?? "",
      ),
    );
  }
}
