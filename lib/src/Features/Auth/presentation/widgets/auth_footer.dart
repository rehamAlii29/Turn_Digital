import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class AuthFooter extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  const AuthFooter(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onTap});

  const AuthFooter.signIn(VoidCallback onTap)
      : this(
          title: "Don't Have Account? ",
          subTitle: "SignUp",
          onTap: onTap,
        );

  const AuthFooter.signUp(VoidCallback onTap)
      : this(
          title: "Already Have Account? ",
          subTitle: "SignIn",
          onTap: onTap,
        );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            title,
            fontSize: 15,
            fontWeight: FW.regular,
          ),
          CustomText(
            subTitle,
            color: AppColors.get.primary,
            fontSize: 15,
            fontWeight: FW.regular,
          )
        ],
      ),
    );
  }
}
