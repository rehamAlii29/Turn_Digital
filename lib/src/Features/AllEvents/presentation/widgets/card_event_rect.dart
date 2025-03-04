import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:get/get.dart';
import '../../../../Core/Constants/Navigation/navigation_const.dart';
import '../../../Event/presentation/manager/fetch_event_details_controller.dart';
import '../../../Home/presentation/manager/share_event_handler.dart';
import 'card_event_content_rect.dart';

class CardEventRect extends StatelessWidget {
  final EventE event;

  const CardEventRect({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        ShareEventHandler.shareEvent(event.title, event.address, event.picture);
      },
      onTap: () {
        FetchEventDetailsController controller =
            Get.put(FetchEventDetailsController());
        controller.fetchEventDetails(int.tryParse(event.id) ?? 0);
        NavigatorService().to(eventDetailsKey);
      },
      child: Container(
        height: 106.toH(),
        padding: EdgeInsets.all(
          8.toH(),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.toRad()),
            color: AppColors.get.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.1),
                blurRadius: 20,
                spreadRadius: 5,
                offset: const Offset(0, 10),
              ),
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageGeneric.network(
              url: event.picture,
              options: ImageOptions(
                  height: 92,
                  width: 79,
                  fit: BoxFit.cover,
                  borderRadius: BorderRadius.circular(10.toRad())),
            ),
            18.ESW(),
            Expanded(
                child: CardEventContentRect(
              event: event,
            ))
          ],
        ),
      ),
    );
  }
}
