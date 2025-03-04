import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:flutter_base/src/Core/Services/Storage/src/Resources/Hive/hive_storage_imp.dart';
import 'package:flutter_base/src/Core/Services/Storage/src/storage_constants.dart';
import 'package:flutter_base/src/Shared/Caches/user_cache.dart';

import 'package:get/get.dart';

import '../../Features/Base/presentation/pages/base_page.dart';
import '../../Features/OnBoarding/presentation/pages/imports_onboarding.dart';
import '../Constants/Enums/app_source.dart';
import '../Constants/Navigation/navigation_const.dart';

class AppFlow {
  AppFlow._();

  static AppSource get currentSource => AppSource.dev;

  /// [controlFlow] manipulates the return Screen  ( Called before the app runs or in Splash Screen )
  ///
  static Future<void> prodFlow() async {
    final isOnBoardingDone = await LocalStorageService().read<bool>(
          key: stgOnBoarding,
          boxName: StgBoxName,
        ) ??
        false;
    final user = await UserCache.instance.data;

    if (isOnBoardingDone) {
      Get.offAll(const BasePage());
      if (user?.id != null) {
        NavigatorService().off(basePageKey);
      } else {
        NavigatorService().off(loginPageKey);
      }
    } else {
      Get.offAll(const OnBoardingPage());
    }
  }
}
