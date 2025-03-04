import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';

class DividerCustom extends StatelessWidget {
  const DividerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.toH(),
      color: AppColors.get.dividerColor,
      width: 2.toW(),
    );
  }
}
