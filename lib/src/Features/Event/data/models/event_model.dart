import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';

import 'organizer_mini_model.dart';

class EventModel extends EventE {
  const EventModel(
      {required super.id,
      required super.picture,
      required super.date,
      required super.title,
      required super.address,
      required super.numberOfGoing,
      required super.addressTitle,
      required super.latitude,
      required super.longitude,
      required super.about,
      required super.price,
      required super.organizer});

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
        id: json['event_id'] != null ? json['event_id'].toString() : "0",
        picture: json['picture'] ?? "",
        date: json['date'] ?? "",
        title: json['title'] ?? "",
        address: json['address'] ?? "",
        numberOfGoing: json['number_of_going'] ?? 0,
        addressTitle: json['address_title'] ?? "",
        latitude: json['latitude'] ?? " 0.0",
        longitude: json['longitude'] ?? "0.0",
        about: json['about_event'] ?? "",
        price:
            json['event_price'] != null ? json['event_price'].toString() : "0",
        organizer: json['organizer'] != null
            ? OrganizerMiniModel.fromJson(json['organizer'])
            : null);
  }
}
