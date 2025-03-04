import 'package:flutter_base/src/Core/NetworkStructure/Params/params.dart';

class FetchOrganizerDetailsParams extends Params {
  final String organizerId;

  FetchOrganizerDetailsParams({required this.organizerId});

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
