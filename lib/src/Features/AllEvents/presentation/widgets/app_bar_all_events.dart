import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class AppBarAllEvents extends StatelessWidget implements PreferredSizeWidget {
  const AppBarAllEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          NavigatorService().back();
        },
      ),
      title: const CustomText(
        "Events",
        fontSize: 24,
      ),
      centerTitle: false,
      actions: [
        ImageGeneric.asset(
          url: Assets.searchBlack,
          options: const ImageOptions(width: 22, height: 22, fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.all(16.toH()),
          child: ImageGeneric.asset(
            url: Assets.menue,
            options:
                const ImageOptions(width: 22, height: 22, fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize

  Size get preferredSize => const Size.fromHeight(60);
}
