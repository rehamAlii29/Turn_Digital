import 'package:equatable/equatable.dart';
import 'package:flutter_base/src/Features/Organizer/domain/entities/review_e.dart';

import '../../../Event/domain/entities/event_e.dart';

class OrganizerE extends Equatable {
  final String name;
  final String picture;
  final int numberOfFollowing;
  final int numberOfFollowers;
  final String about;
  final List<EventE> events;
  final List<ReviewE> reviews;

  OrganizerE({
    required this.name,
    required this.picture,
    required this.numberOfFollowing,
    required this.numberOfFollowers,
    required this.about,
    required this.events,
    required this.reviews,
  });

  @override
  List<Object?> get props => [
        name,
        picture,
        numberOfFollowing,
        numberOfFollowers,
        about,
        events,
        reviews,
      ];
}
