import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Shared/Entities/language.dart';
import '../Services/Storage/src/Resources/Hive/hive_storage_imp.dart';
import '../Services/Storage/src/storage_constants.dart';
// TODO : add the most main used functions here !

class Utils {
  Utils._();

  //   static Locale get cachedLocale{
  //     int? local ;
  //     StorageService<int>().read(stgLang).then((value) {
  //      local = value;
  //    });
  //    return LanguageData.locale(local??1);
  //  }
  static final LocalStorageService _box = LocalStorageService();

  // static Locale get cachedLocale async{
  //   return  LanguageData.locale(_box.save<int>(
  //     key: stgLang,
  //     data: 1,
  //     boxName: StgBoxName,
  //   ));
  // }

  static Future<void> applyHapticFeedback({bool vibration = false}) async {
    if (vibration) {
      await HapticFeedback.vibrate();
    } else {
      await HapticFeedback.heavyImpact();
    }
  }

  /// Allow you to copy [Text] to clipboard
  static Future<void> copyToClipboard(String text) async {
    // if (text.trim().isEmpty) {
    //   AppSnacks.showSnackNotificationBar(
    //     title: "",
    //     body: "",
    //   );
    //   return;
    // } else {
    //   Clipboard.setData(ClipboardData(text: text)).then((value) {
    //     AppSnacks.showSnackNotificationBar(
    //       title: "تم النسخ بنجاح",
    //       body: text,
    //     );
    //   });
    // }
  }

  /// ------------------------------ Snack -------------------------------------
  /// snackBar

  /// ------------------------------ toast --------------------------------------

  /// gets random number
  static int randomNumber({int nextInt = 1000}) {
    return math.Random().nextInt(nextInt) + 100;
  }
}
