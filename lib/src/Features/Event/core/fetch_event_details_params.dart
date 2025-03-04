import 'package:flutter_base/src/Core/NetworkStructure/Params/params.dart';

class FetchEventDetailsParams extends Params {
  final int id;

  FetchEventDetailsParams({required this.id});

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
