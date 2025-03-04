import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import '../../../../Core/Constants/Navigation/navigation_const.dart';
import '../../../../Core/NetworkStructure/Resources/DataState/data_state.dart';
import '../../../../Core/Utils/SnackUtil/snack_util.dart';
import '../../../../Core/Utils/Validation/app_validator.dart';

import '../../../../Shared/Caches/user_cache.dart';
import '../../../../Super/Controllers/Resources/get/get_controller_interface.dart';
import '../../core/params/register_params.dart';
import '../../data/models/user_model.dart';
import '../../domain/use_cases/register_use_case.dart';

class RegisterController extends GetControllerInterface<UserModel> {
  late TextEditingController passwordController;
  late TextEditingController email;
  late TextEditingController nameController;
  late TextEditingController confirmPasswordController;

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  void register() {
    formValidator(
      globalKey: globalKey,
      onSuccessValidate: () async {
        final RegisterUseCase useCase = RegisterUseCase();
        state = await useCase(
            params: RegisterParams(
          password: passwordController.text,
          name: nameController.text,
          email: email.text,
        ))!;
        if (state is DataSuccess) {
          UserCache.instance.saveUser(state.data!);
          UserCache.instance.loginUser();
          NavigatorService().to(verificationPageKey, argument: email.text);
        } else if (state is DataFailed) {
          AppSnack().showSnackbar(state.error?.title ?? "",
              backgroundColor: AppColors.get.error);
        }
      },
      onFailedValidate: () {},
    );
  }

  String? confirmPassword(String? value) {
    if (passwordController.text != confirmPasswordController.text) {
      return "Your password is Not Matched";
    }
    return null;
  }

  bool isVisiblePassword = true;
  bool isVisibleConfirmPassword = true;

  onPasswordSecureChange() {
    isVisiblePassword = !isVisiblePassword;
    update();
  }

  onConfirmPasswordSecureChange() {
    isVisibleConfirmPassword = !isVisibleConfirmPassword;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    confirmPasswordController = TextEditingController();
    email = TextEditingController();
  }
}
