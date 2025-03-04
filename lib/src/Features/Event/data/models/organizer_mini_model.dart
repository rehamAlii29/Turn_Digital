import 'package:flutter_base/src/Features/Event/domain/entities/organizer_mini_e.dart';

class OrganizerMiniModel extends OrganizerMiniE {
  const OrganizerMiniModel(
      {required super.id, required super.name, required super.picture});

  factory OrganizerMiniModel.fromJson(Map<String, dynamic> json) {
    return OrganizerMiniModel(
      id: json['id'] != null ? json['id'].toString() : "0",
      name: json['name'] ?? '',
      picture: json['picture'] ?? "",
    );
  }
}
