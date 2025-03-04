import 'package:flutter_base/src/Features/Event/data/models/event_model.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';

import '../../../../Core/NetworkStructure/DataSource/service_interface.dart';
import '../../../../Core/NetworkStructure/Repository/repo_interface.dart';
import '../../data/data_sources/fetch_all_events_service.dart';

class FetchAllEventsRepo extends RepoInterface<List<EventE>> {
  FetchAllEventsRepo._();

  static final instance = FetchAllEventsRepo._();

  @override
  ServicesInterface get serviceInstance => FetchAllEventsService.instance;

  @override
  List<EventE> Function(dynamic data) get onParse => (data) {
        return List.from(data).map((e) => EventModel.fromJson(e)).toList();
      };

  @override
  // TODO: implement keyForPagination
  String get keyForPagination => "events";
  @override
  bool hasPagination = true;
}
