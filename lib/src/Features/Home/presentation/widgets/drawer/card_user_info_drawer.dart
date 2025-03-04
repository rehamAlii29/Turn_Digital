import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Managers/user_controller.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:get/get.dart';

class CardUserInfoDrawer extends StatelessWidget {
  const CardUserInfoDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UserController());
    return GetBuilder<UserController>(builder: (_) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageGeneric.network(
            url:
                "https://www.man-shop.eu/media/94/48/cd/1726390431/MAN_merchandising_offizielle_fan_shop_kollektionen_lion_collection_2024_2025.png",
            options: const ImageOptions(radius: 70, fit: BoxFit.cover),
          ),
          12.ESH(),
          CustomText(
            _.user?.name ?? "Guest",
            fontSize: 19,
            fontWeight: FW.medium,
          )
        ],
      );
    });
  }
}
