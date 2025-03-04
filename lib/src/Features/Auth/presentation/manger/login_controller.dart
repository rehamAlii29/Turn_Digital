import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:flutter_base/src/Shared/Caches/user_cache.dart';
import 'package:get/get.dart';
import '../../../../Core/Constants/Navigation/navigation_const.dart';
import '../../../../Core/Utils/Validation/app_validator.dart';
import '../../../../Shared/Managers/user_controller.dart';
import '../../../../Super/Controllers/Resources/get/get_controller_interface.dart';
import '../../data/models/user_model.dart';

class LoginController extends GetControllerInterface<UserModel> {
  late TextEditingController mailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  void login() {
    formValidator(
      globalKey: globalKey,
      onSuccessValidate: () async {
        onSuccess();
      },
    );
  }

  bool passwordVisible = true;

  visiblePassword() {
    passwordVisible = !passwordVisible;
    update();
  }

  onSuccess() {
    UserCache.instance.saveUser(
      UserModel(
          id: "44", email: mailController.text, name: mailController.text),
    );

    NavigatorService().to(basePageKey);
  }

  @override
  void onInit() {
    super.onInit();
    mailController = TextEditingController();

    passwordController = TextEditingController();
  }
}
