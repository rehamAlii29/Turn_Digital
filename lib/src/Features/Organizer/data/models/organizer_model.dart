import 'package:flutter_base/src/Features/Event/data/models/event_model.dart';
import 'package:flutter_base/src/Features/Organizer/data/models/review_model.dart';
import 'package:flutter_base/src/Features/Organizer/domain/entities/organizer_e.dart';

class OrganizerModel extends OrganizerE {
  OrganizerModel({
    required super.about,
    required super.events,
    required super.name,
    required super.numberOfFollowers,
    required super.numberOfFollowing,
    required super.picture,
    required super.reviews,
  });

  factory OrganizerModel.fromJson(Map<String, dynamic> json) {
    return OrganizerModel(
      name: json['name'] ?? "",
      picture: json['picture'] ?? "",
      numberOfFollowing: json['number_of_following'] ?? 0,
      numberOfFollowers: json['number_of_followers'] ?? 0,
      about: json['about'],
      events: json['events'] != null
          ? List.from(json['events'])
              .map((e) => EventModel.fromJson(e))
              .toList()
          : [],
      reviews: json['reviews'] != null
          ? List.from(json['reviews'])
              .map((e) => ReviewModel.fromJson(e))
              .toList()
          : [],
    );
  }
}
