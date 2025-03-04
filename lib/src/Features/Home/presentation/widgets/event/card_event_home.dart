import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';
import 'package:flutter_base/src/Features/Home/presentation/manager/share_event_handler.dart';
import 'package:get/get.dart';

import '../../../../../Core/Constants/Navigation/navigation_const.dart';
import '../../../../../Core/Services/NavigatorService/navigator_service.dart';
import '../../../../Event/presentation/manager/fetch_event_details_controller.dart';
import 'card_event_content.dart';
import 'card_image_event.dart';

class CardEventHome extends StatelessWidget {
  final EventE eventE;

  const CardEventHome({super.key, required this.eventE});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FetchEventDetailsController controller =
            Get.put(FetchEventDetailsController());
        controller.fetchEventDetails(int.tryParse(eventE.id) ?? 0);
        NavigatorService().to(eventDetailsKey);
      },
      onLongPress: () {
        ShareEventHandler.shareEvent(
            eventE.title, eventE.address, eventE.picture);
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.get.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 20,
                spreadRadius: 5,
                offset: const Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(18.toRad())),
        width: 237.toW(),
        padding: EdgeInsets.symmetric(vertical: 9.toH(), horizontal: 10.toW()),
        child: Column(
          children: [
            CardImageEvent(
              date: eventE.date,
              image: eventE.picture,
            ),
            14.ESH(),
            CardEventContent(
              title: eventE.title,
              location: eventE.address,
              numberOfGoing: eventE.numberOfGoing,
            ),
          ],
        ),
      ),
    );
  }
}
