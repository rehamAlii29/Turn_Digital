import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../Core/Constants/Navigation/navigation_const.dart';
import '../../../../Core/Styles/Colors/app_colors.dart';
import '../../../../Core/Utils/SnackUtil/snack_util.dart';
import '../../../../Super/Controllers/Resources/get/get_controller_interface.dart';

class VerificationCodeController extends GetControllerInterface {
  TextEditingController? textEditingController;
  StreamController<ErrorAnimationType>? errorController;

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  void submit() async {
    if (globalKey.currentState!.validate()) {
      globalKey.currentState!.save();
      if (textEditingController?.text == "0000") {
        NavigatorService().off(basePageKey);
      } else {
        AppSnack().showSnackbar(state.error?.title ?? "",
            backgroundColor: AppColors.get.error);
      }
    }
  }

  int timerCount = 60;

  @override
  void onInit() {
    super.onInit();
    textEditingController = TextEditingController();
    errorController = StreamController<ErrorAnimationType>();
    timerResend();
  }

  timerResend() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timerCount > 0) {
        timerCount--;
      } else {
        timer.cancel();
      }
      update();
    });
  }
}
