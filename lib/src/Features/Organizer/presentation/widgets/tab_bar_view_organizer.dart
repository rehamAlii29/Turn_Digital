import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Organizer/domain/entities/organizer_e.dart';
import 'package:flutter_base/src/Features/Organizer/presentation/widgets/tab_about.dart';
import 'package:flutter_base/src/Features/Organizer/presentation/widgets/tab_events.dart';
import 'package:flutter_base/src/Features/Organizer/presentation/widgets/tab_review.dart';

class TabBarViewOrganizer extends StatelessWidget {
  final OrganizerE organizer;

  const TabBarViewOrganizer({super.key, required this.organizer});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.toW(),
          vertical: 20.toH(),
        ),
        child: TabBarView(
          children: [
            TabAbout(
              about: organizer.about,
            ),
            TabEvents(
              events: organizer.events,
            ),
            TabReview(
              reviews: organizer.reviews,
            )
          ],
        ),
      ),
    );
  }
}
