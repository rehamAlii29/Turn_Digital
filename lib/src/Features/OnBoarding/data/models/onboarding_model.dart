
 import 'package:flutter_base/src/Features/OnBoarding/domain/entities/onboarding.dart';

class OnBoardingModel  extends OnBoarding {
  final String? imageUrl;
  final String? title;
  final String? body;

    OnBoardingModel({
    this.imageUrl,
    this.body,
    this.title,
  }): super(imageUrl: imageUrl, body: body, title: title);
}

