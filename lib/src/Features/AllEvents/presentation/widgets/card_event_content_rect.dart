import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/event/card_icon_title.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

import '../../../../Core/Utils/date_utilities.dart';

class CardEventContentRect extends StatelessWidget {
  final EventE event;

  const CardEventContentRect({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          '${DateUtilities.formatDateTime(event.date)["month"].toString()} '
          '${DateUtilities.formatDateTime(event.date)["day"].toString()} -'
          '${DateUtilities.formatDateTime(event.date)["time"].toString()}',
          fontSize: 13,
          color: AppColors.get.primary,
        ),
        4.ESH(),
        Expanded(
          child: CustomText(
            event.title,
            fontSize: 15,
            maxLines: 2,
          ),
        ),
        CardIconTitle(title: event.address, icon: Assets.location)
      ],
    );
  }
}
