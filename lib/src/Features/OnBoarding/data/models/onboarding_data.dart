import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Features/OnBoarding/data/models/onboarding_model.dart';

import '../../core/Const/on_boarding_const.dart';

const String _dumbData =
    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى ...";

class OnBoardingData {
  OnBoardingData._();

  static final List<OnBoardingModel> _displayedList = [
    OnBoardingModel(
      title: onBoardingTitle1,
      body: onBoardingBody1,
      imageUrl: Assets.onBoarding1,
    ),
    OnBoardingModel(
      title: onBoardingTitle2,
      body: onBoardingBody2,
      imageUrl: Assets.onBoarding2,
    ),
    OnBoardingModel(
      title: onBoardingTitle3,
      body: onBoardingBody3,
      imageUrl: Assets.onBoarding3,
    ),
  ];

  static List<OnBoardingModel> get displayedList => _displayedList;
}
