import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/App/app_material.dart';
import 'package:flutter_base/src/Features/OnBoarding/presentation/pages/imports_onboarding.dart';
import 'package:flutter_base/src/Features/Splash/presentation/pages/splash_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Core/Constants/decorations/app_sizes.dart';
import 'Features/Base/presentation/pages/base_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ScreenUtilInit(
        // TODO 5: Set your device screen size here ! (width, height)
        designSize: AppSizes.screenSize,
        minTextAdapt: true,
        builder: (context, child) {
          child = const AppMaterial(
            home: SplashPage(),
          );
          return child;
        },
      ),
    );
  }
}
