import 'package:flutter_base/src/Core/NetworkStructure/Params/params.dart';

class FetchAllEventsParams extends Params {
  FetchAllEventsParams({
    required this.page,
    required this.limit,
  });

  final int page;
  final int limit;

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
