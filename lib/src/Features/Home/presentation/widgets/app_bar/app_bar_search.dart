import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/TextFields/Default/default_text_field.dart';

import 'card_filter.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextFieldDefault(
          prefix: PrefixWithIconImage(
              iconImage: Assets.search,
              color: AppColors.get.white.withOpacity(.5)),
          hint: TFFHint(
              title: 'Search...', color: AppColors.get.white.withOpacity(.5)),
          inputDecoration: InputDecorationWithBorder(
              borderColor: AppColors.get.primary,
              disableBorderColor: AppColors.get.primary,
              enableBorderColor: AppColors.get.primary),
        )),
        const CardFilter()
      ],
    );
  }
}
