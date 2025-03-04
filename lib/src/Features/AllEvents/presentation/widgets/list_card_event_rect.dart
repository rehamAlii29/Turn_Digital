import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';

import '../../../Event/domain/entities/event_e.dart';
import 'card_event_rect.dart';

class ListCardEventRect extends StatelessWidget {
  final List<EventE> events;
  final ScrollController? controller;

  const ListCardEventRect({super.key, required this.events, this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20.toW()),
        shrinkWrap: true,
        controller: controller,
        itemBuilder: (context, index) => CardEventRect(
              event: events[index],
            ),
        separatorBuilder: (context, index) => 12.ESH(),
        itemCount: events.length);
  }
}
