import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

import '../../../../Core/Utils/date_utilities.dart';

class CardEventOrganizer extends StatelessWidget {
  final EventE event;

  const CardEventOrganizer({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.get.white,
              boxShadow: [
                BoxShadow(
                    color: AppColors.get.grey.withOpacity(.1),
                    blurRadius: 10,
                    offset: Offset(0, 4))
              ],
              borderRadius: BorderRadius.circular(10.toRad())),
          padding: EdgeInsets.all(10.toRad()),
          child: Row(
            children: [
              ImageGeneric.network(
                  url: event.picture,
                  options: ImageOptions(
                      fit: BoxFit.cover,
                      width: 79,
                      borderRadius: BorderRadius.circular(10.toRad()))),
              18.ESW(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    '${DateUtilities.formatDateTime(event.date)["day"].toString()} '
                    ' ${DateUtilities.formatDateTime(event.date)["month"].toString()} - '
                    ' ${DateUtilities.formatDateTime(event.date)["time"].toString()} ',
                    fontSize: 12,
                    color: AppColors.get.primary,
                  ),
                  CustomText(
                    event.title,
                    fontSize: 18,
                  )
                ],
              )
            ],
          )),
    );
  }
}
