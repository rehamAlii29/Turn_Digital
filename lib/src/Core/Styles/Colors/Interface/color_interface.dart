import 'package:flutter/material.dart';

abstract class ColorInterface {
  // TODO 6 : Add Basic Colors here !
  Color get primarySwatch => const Color(0xff2CBBD2);

  Color get primary => const Color(0xffF27822);

  Color get primaryLighter => const Color(0xffF8A85E);

  Color get secondary => const Color(0xff3AC1FF);

  Color get third => const Color(0xff9CA0BC);

  Color get lightText => third;

  Color get buttonSecondary => third;

  Color get buttonMain => main;

  Color get icon;

  Color get cardBorder;

  Color get cardFill;

  Color get buttonText => third;

  Color get main;

  Color get black => Colors.black87;

  Color get background;

  Color get tabBar;

  Color get activeBackground;

  Color get grey => const Color(0xff909AAA);

  // Turn
  Color get subTitle => const Color(0xff9D9898);

  Color get subTitleDark => const Color(0xffB6B5C0);

  Color get unSelIcon => const Color(0xffD2CFD6);

  Color get homeScaColor => const Color(0xffFCFCFD);

  Color get eventTitles => const Color(0xffF0635A);

  Color get greyLight => const Color(0xff706E8F);

  Color get orangeLight => const Color(0xffFDEFE4);

  Color get dividerColor => const Color(0xffDDDDDD);

  Color get greySubTitle => const Color(0xffADAFBB);

  Color get opposite;

  /// for disabled item like buttons
  Color get disabled;

  Color get title;

  Color get green => const Color(0xff38A169);

  Color get borderColor => const Color(0xffEBEAEC);

  Color get faceBook => const Color(0xff7583CA);

  Color get indicatorActive => secondary;

  Color get indicatorInactive => const Color(0xffCCCCCC);

  Color get appbar => main;

  Color get appBarColorInner;

  Color get shadow;

  Color get white => Colors.white;

  Color get transparent => Colors.transparent;

  Color get red => const Color(0xffEA6262);

  Color get error => red;

  Color get caution => const Color(0xffFF2D55);

  Color get greenlight => const Color(0xff4DA576);

  Color get amber => const Color(0xffFFB116);

  Color get orange => const Color(0xffFF9113);

  Color get yellow => const Color(0xffFCD732);

  Color get lightYellow => const Color(0xffFFECCC);

  Color get chipFill => main;

  Color get chipBorderSecondary => const Color(0xffDFEDFC);

  Color get chipBorder => const Color(0xff101C43);

  Color get userCircleAvatarFill => primary;

  Color get circleAvatarFill => const Color(0xffEFF7FF);

  Color get circleAvatarOverlay => Colors.white.withOpacity(0.5);

  Color get circleAvatarBorder => Colors.white;

  Color get circleAvatarStackedBorder => const Color(0xff3D4CDB);

  Color get blue => const Color(0xff9DDCEC);

  Color get circleBorder => const Color(0xff939393);

  Color get cardSubTitle => const Color(0xffC2C2C2);

  Color get cardBackGroundAccount => const Color(0xffECECEC);

  Color get cardBorderColor => const Color(0xffC1C1C1);

  /// changed to grade // or save as image
  Color get bnbSelectedItem => primary;

  Color get bnbUnSelectedItem => const Color(0xff949494);

  Color get taskBlack => const Color(0xff121927);

  Color get taskWight => const Color(0xffFFFFFF);

  Color get onRefreshIndicator;

//<editor-fold desc="Text Field">
  Color get tFFFillColor => const Color(0xffF2F3F7);

  Color get tTFCursor => const Color(0xff000000);

  Color get tFFInputTitle => const Color(0xff000000);

  Color get tFFInputBackground => Colors.transparent;

  Color get tTFIsRequired => red;

  Color get tTFPrefixColor => const Color(0xff747688);

  Color get tTFPrefixText => const Color(0xffFEF1F1);

  Color get tTFErrorBorder => Colors.red;

  Color get tTFErrorText => const Color(0xffFF4947);

  Color get tTFErrorTextBcg => Colors.transparent;

  Color get tFFHintTitle => const Color(0xff747688);

  Color get tTFHintTextBcg => const Color(0xffFEF1F1);

  Color get tFFHeaderTitle => title;

  Color get tFFHeaderBackground => Colors.transparent;

  Color get tFFLabelTitle => title;

  Color get tFFLabelBackground => const Color(0xffBBBDC1);

  Color get tTFBackGround => Colors.transparent;

  Color get tTFActiveBackGround => const Color(0xFFF5F5F5);

  Color get tTFBorder => primary;

  Color get tTFFocusBorder => primary;

  Color get tTFSuffixIcon => const Color(0xff747688);

  Color get tTFEnableBorder => const Color(0xffE6E6E6);

  Color get tTFDisableBorder => const Color(0xffBBBDC1);

  Color get tFFSuffixText => const Color(0xffFEF1F1);

//</editor-fold>
}
