import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Auth/presentation/widgets/section_remeber_me.dart';
import 'package:get/get.dart';
import '../../../../Core/Constants/Strings/assets.dart';
import '../../../../Core/Utils/Validation/Implementation/PasswordValidator/password_validator.dart';
import '../../../../Core/Utils/Validation/app_validator.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/custom_rounded_button.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/TextFields/Default/default_text_field.dart';
import '../manger/login_controller.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    var node = FocusScope.of(context);

    return GetBuilder<LoginController>(
      builder: (_) {
        return Form(
          key: _.globalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFieldDefault(
                hint: const TFFHint(
                  title: 'abc@email.com',
                ),
                prefix: PrefixWithIconImage(
                  iconImage: Assets.mail,
                ),
                validation: AppValidator.emailValidator.validate,
                controller: _.mailController,
                onComplete: () {
                  node.unfocus();
                },
              ),
              19.ESH(),
              TextFieldDefault(
                hint: const TFFHint(
                  title: 'Your password',
                ),
                prefix: PrefixWithIconImage(
                  iconImage: Assets.password,
                ),
                validation: PasswordValidator.instance.validate,
                secureType: SecureType.Toggle,
                suffix: SuffixPassword(
                    isPasswordVisible: _.passwordVisible,
                    onTap: _.visiblePassword),
                controller: _.passwordController,
                onComplete: () {
                  node.unfocus();
                },
              ),
              20.ESH(),
              const SectionRemeberMe(),
              36.ESH(),
              ButtonDefault.image(
                color: AppColors.get.white,
                height: 58,
                image: const AssetImage(Assets.arrow),
                label: "Sign in",
                onPressed: () {
                  _.login();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
