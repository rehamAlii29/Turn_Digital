import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Constants/Decorations/app_shapes.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Core/Utils/utils.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/Loading/loading.dart';
import 'package:get/get.dart';

class AppDialogs {
  static void showLoadingDialog({
    Loading? loading,
    Color? color,
    bool isDark = false,
    bool isDismissible = false,
  }) {
    Get.dialog(
      Center(
        child: Dialog(
          shape: AppShapes.dialogShape,
          backgroundColor: color ?? (AppColors.get.main),
          elevation: 5,
          child: Container(
            // height: Get.mediaQuery.size.height * 0.12,
            // width: Get.mediaQuery.size.width * 0.1,
            padding: EdgeInsets.symmetric(vertical: 10.toH()),
            child:
                //TODO 7.b : change to loading widget
                loading ??
                    Loading.fadingCircle(size: 50, color: AppColors.get.grey),
          ),
          // insetPadding: const EdgeInsets.all(2.0),
        ),
      ),
      barrierDismissible: isDismissible,
      transitionCurve: Curves.fastLinearToSlowEaseIn,
    );
  }

  static void closeOpenDialogs() {
    /// close All open sheets and dialogs
    if (Get.isDialogOpen == true) {
      Get.back();
    }
    // Navigator.of(context).pop();
  }

  static void showDialog({
    Widget? child,
    bool isDismissible = true,
    EdgeInsets insetPadding =
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
    EdgeInsetsGeometry contentPadding =
        const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 30.0),
  }) {
    Get.dialog(
      AlertDialog(
        insetPadding: insetPadding,
        contentPadding: contentPadding,
        shape: AppShapes.dialogShape,
        content: SizedBox(
          width: Get.mediaQuery.size.width,
          child: child,
        ),
      ),
      transitionCurve: Curves.fastLinearToSlowEaseIn,
      barrierColor: const Color(0xff333333).withOpacity(0.9),
      barrierDismissible: isDismissible,
    );
  }

  static showConfirmDialog(
      {required BuildContext context,
      required String title,
      String confirmLabel = 'confirm',
      required Function() confirm}) {
    return showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            title,
          ),
          // content: MyText(title: title,size: 12,color: MyColors.blackOpacity,),
          actions: [
            CupertinoDialogAction(
              child: Text(
                "back",
              ),
              onPressed: () => NavigatorService().back(),
            ),
            CupertinoDialogAction(
              onPressed: confirm,
              child: Text(
                (confirmLabel),
              ),
            ),
          ],
        );
      },
    );
  }

  ///change later
  static Future<void> showPreviewDialog({
    required Widget child,
    bool closeAfterAWhile = true,
  }) async {
    await Utils.applyHapticFeedback();
    // await AudioService.play(audio_zoom_in);
    // play sound
    Get.dialog(
      child,
      transitionCurve: Curves.fastLinearToSlowEaseIn,
    );
    if (closeAfterAWhile) {
      Future.delayed(const Duration(milliseconds: 1500), () {}).then((_) async {
        if (Get.isDialogOpen!) {
          Get.back();
          // await AudioService.play(audio_zoom_out);
          Utils.applyHapticFeedback(vibration: true);
        }
      });
    }
  }
}
