import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';
import 'package:flutter_base/src/Features/Event/presentation/widgets/section_about_event.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

import '../../../../Core/Utils/date_utilities.dart';
import 'card_icon_title_sub.dart';
import 'card_organizer.dart';

class SectionEventContent extends StatelessWidget {
  final EventE eventE;

  const SectionEventContent({super.key, required this.eventE});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          eventE.title,
          fontSize: 35,
        ),
        18.ESH(),
        CardIconTitleSub(
          icon: Assets.eventDate,
          title:
              ' ${DateUtilities.formatDateTime(eventE.date)["day"].toString()} '
              ' ${DateUtilities.formatDateTime(eventE.date)["month"].toString()} '
              ' ${DateUtilities.formatDateTime(eventE.date)["year"].toString()} ',
          sub:
              ' ${DateUtilities.formatDateTime(eventE.date)["time"].toString()} ',
        ),
        16.ESH(),
        CardIconTitleSub(
          icon: Assets.eventLocation,
          title: eventE.address,
          sub: eventE.addressTitle,
        ),
        24.ESH(),
        if (eventE.organizer != null)
          CardOrganizer(
            organizerMiniE: eventE.organizer!,
          ),
        21.ESH(),
        SectionAboutEvent(
          about: eventE.about,
        )
      ],
    );
  }
}
