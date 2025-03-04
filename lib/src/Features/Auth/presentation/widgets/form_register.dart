import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Core/Utils/Validation/app_validator.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:get/get.dart';

import '../../../../Core/Constants/Strings/assets.dart';
import '../../../../Core/Services/NavigatorService/navigator_service.dart';
import '../../../../Core/Styles/Colors/app_colors.dart';
import '../../../../Core/Utils/Validation/Implementation/PasswordValidator/password_validator.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/custom_rounded_button.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/TextFields/Default/default_text_field.dart';
import '../manger/register_controller.dart';
import 'icon_back.dart';

class FormRegister extends StatelessWidget {
  const FormRegister({super.key});

  @override
  Widget build(BuildContext context) {
    var node = FocusScope.of(context);

    return GetBuilder<RegisterController>(builder: (_) {
      return Form(
        key: _.globalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const IconBack(),
            20.ESH(),
            const CustomText(
              "Sign Up",
              fontSize: 24,
            ),
            20.ESH(),
            TextFieldDefault(
              validation: AppValidator.nameValidator.validate,
              controller: _.nameController,
              prefix: PrefixWithIconImage(
                iconImage: Assets.name,
              ),
              hint: const TFFHint(
                title: 'Full Name',
              ),
              onComplete: () {
                node.unfocus();
              },
            ),
            19.ESH(),
            TextFieldDefault(
              validation: AppValidator.emailValidator.validate,
              controller: _.email,
              prefix: PrefixWithIconImage(
                iconImage: Assets.mail,
              ),
              hint: const TFFHint(
                title: 'abc@email.com',
              ),
              onComplete: () {
                node.unfocus();
              },
            ),
            19.ESH(),
            TextFieldDefault(
              secureType: SecureType.Always,
              controller: _.passwordController,
              prefix: PrefixWithIconImage(
                iconImage: Assets.password,
              ),
              hint: const TFFHint(
                title: 'Your Password',
              ),
              validation: PasswordValidator.instance.validate,
              suffix: SuffixPassword(
                  isPasswordVisible: _.isVisiblePassword,
                  onTap: _.onPasswordSecureChange),
              onComplete: () {
                node.unfocus();
              },
            ),
            19.ESH(),
            TextFieldDefault(
              prefix: PrefixWithIconImage(
                iconImage: Assets.password,
              ),
              secureType: SecureType.Always,
              controller: _.confirmPasswordController,
              hint: const TFFHint(
                title: 'Confirm Password',
              ),
              validation: _.confirmPassword,
              suffix: SuffixPassword(
                  isPasswordVisible: _.isVisibleConfirmPassword,
                  onTap: _.onConfirmPasswordSecureChange),
              onComplete: () {
                node.unfocus();
              },
            ),
            30.ESH(),
            Center(
              child: ButtonDefault.image(
                color: AppColors.get.white,
                height: 58,
                image: const AssetImage(Assets.arrow),
                label: "Sign Up",
                onPressed: () {
                  _.register();
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
