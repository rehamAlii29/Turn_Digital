import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Services/Storage/src/Resources/Hive/hive_storage_imp.dart';
import 'package:get/get.dart';
import 'package:flutter_base/src/Features/OnBoarding/data/models/onboarding_data.dart';
import 'package:flutter_base/src/Features/OnBoarding/data/models/onboarding_model.dart';

import '../../../../Core/Services/Storage/src/storage_constants.dart';
import '../../../Auth/presentation/pages/auth_pages_imports.dart';

class OnBoardingController extends GetxController {
  PageController pageController = PageController();
  List<OnBoardingModel> data = OnBoardingData.displayedList;
  bool isLastPage = false;
  int currentIndex = 0;

  LocalStorageService box = LocalStorageService();

  Future<void> _saveOnBoardingDone({bool navigate = false}) async {
    await box.save(
      key: stgOnBoarding,
      data: true,
      boxName: StgBoxName,
    );
    if (navigate) {
      Get.offAll(() => const LoginPage());
    }
  }

  void onNextChanged() {
    if (isLastPage) {
      _saveOnBoardingDone(navigate: true);
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 750),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    }
    update();
  }

  void onSkip() {
    isLastPage = true;
    update();
    _saveOnBoardingDone(navigate: true);
  }

  void onPageChanged(int index) {
    currentIndex = index;
    isLastPage = (index == data.length - 1);
    update();
  }
}
