import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class SectionRemeberMe extends StatelessWidget {
  const SectionRemeberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 0.7,
          child: Switch.adaptive(
            value: true,
            onChanged: (v) {},
          ),
        ),
        // 8.ESW(),
        const CustomText(
          "Remember Me",
          fontSize: 14,
        ),
        Spacer(),
        const CustomText(
          "Forget Password?",
          fontSize: 14,
          fontWeight: FW.medium,
        )
      ],
    );
  }
}
