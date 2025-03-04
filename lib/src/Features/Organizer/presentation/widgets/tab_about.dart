import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:readmore/readmore.dart';

class TabAbout extends StatelessWidget {
  final String about;

  const TabAbout({super.key, required this.about});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      about * 2,
      trimMode: TrimMode.Line,
      trimLines: 1,
      colorClickableText: AppColors.get.black,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Read less',
      moreStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.get.primary),
    );
  }
}
