import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/event/card_event_home.dart';

import '../../../Event/domain/entities/event_e.dart';

class SliderCardEventHome extends StatelessWidget {
  final List<EventE> events;

  const SliderCardEventHome({
    super.key,
    required this.events,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.toH(),
      child: ListView.separated(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CardEventHome(
                eventE: events[index],
              ),
          separatorBuilder: (context, index) => 16.ESW(),
          itemCount: events.length > 3 ? 3 : events.length),
    );
  }
}
