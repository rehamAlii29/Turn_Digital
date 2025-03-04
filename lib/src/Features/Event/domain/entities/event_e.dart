import 'package:equatable/equatable.dart';

import 'organizer_mini_e.dart';

class EventE extends Equatable {
  final String id;
  final String picture;
  final String date;
  final String title;
  final String address;
  final int numberOfGoing;
  final String addressTitle;
  final String latitude;
  final String longitude;
  final String about;
  final String price;
  final OrganizerMiniE? organizer;

  const EventE({
    required this.id,
    required this.picture,
    required this.date,
    required this.title,
    required this.address,
    required this.numberOfGoing,
    required this.addressTitle,
    required this.latitude,
    required this.longitude,
    required this.about,
    required this.price,
    required this.organizer,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        picture,
        date,
        title,
        address,
        numberOfGoing,
        addressTitle,
        latitude,
        longitude,
        about,
        price,
        organizer,
      ];

  toMap() {
    return {
      "event_id": id,
      "picture": picture,
      "date": date,
      "title": title,
      "address": address,
      "number_of_going": numberOfGoing,
      "address_title": addressTitle,
      "latitude": latitude,
      "longitude": longitude,
      "about_event": about,
      "event_price": price,
    };
  }
}
