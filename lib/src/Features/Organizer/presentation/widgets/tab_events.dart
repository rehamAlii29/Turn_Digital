import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Features/Organizer/presentation/widgets/list_card_event_organizer.dart';

import '../../../Event/domain/entities/event_e.dart';

class TabEvents extends StatelessWidget {
  final List<EventE> events;

  const TabEvents({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    return ListCardEventOrganizer(
      events: events,
    );
  }
}
