import 'package:flutter/material.dart';

class AppSnack {
  static final AppSnack _instance = AppSnack._internal();

  AppSnack._internal();

  factory AppSnack() => _instance;

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void showSnackbar(String message, {Color? backgroundColor}) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: backgroundColor ?? Colors.black87,
      duration: const Duration(seconds: 3),
    );

    scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }
}
