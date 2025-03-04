import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Constants/strings/app_strings.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/on_generate_rout_implementation.dart';
import 'package:flutter_base/src/Core/Styles/Themes/imports_themes.dart';
import 'package:flutter_base/src/Core/Utils/SnackUtil/snack_util.dart';

import 'package:get/get.dart';

import '../Services/NavigatorService/navigator_service.dart';

class AppMaterial extends StatelessWidget {
  final Widget home;

  const AppMaterial({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: AppSnack().scaffoldMessengerKey,
      navigatorKey: NavigatorService().navigatorKey,
      onGenerateRoute: OnGenerateRoutImplementation().onGenerateRout,
      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 200),
      title: AppStrings.appName,
      theme: ThemeManager.light,
      home: home,
    );
  }
}
