import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/App/app_flow.dart';
import 'package:get/get.dart';
import '../../../OnBoarding/presentation/pages/imports_onboarding.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final Duration _splashDuration = const Duration(seconds: 2);
  final Curve _animationCurve = Curves.easeInOutBack;

  late AnimationController _controller;
  late Animation _animation;

  Animation get animation => _animation;

  @override
  void onInit() {
    super.onInit();
    _controller = AnimationController(vsync: this, duration: _splashDuration);
    _animation = CurvedAnimation(parent: _controller, curve: _animationCurve);
    _controller.forward();
    _controller.addListener(() {
      update();
      if (_animation.isCompleted) {
        AppFlow.prodFlow();
      }
    });
  }
}
