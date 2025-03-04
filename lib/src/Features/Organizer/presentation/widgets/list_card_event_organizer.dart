import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Organizer/presentation/widgets/card_event_organizer.dart';

import '../../../Event/domain/entities/event_e.dart';

class ListCardEventOrganizer extends StatelessWidget {
  final List<EventE> events;

  const ListCardEventOrganizer({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => CardEventOrganizer(
              event: events[index],
            ),
        separatorBuilder: (context, index) => 16.ESH(),
        itemCount: events.length);
  }
}
