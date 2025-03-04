import 'package:flutter_base/src/Features/Event/data/models/event_model.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';

import '../../../../Core/NetworkStructure/DataSource/service_interface.dart';
import '../../../../Core/NetworkStructure/Repository/repo_interface.dart';
import '../../data/data_sources/fetch_event_details_service.dart';

class FetchEventDetailsRepo extends RepoInterface<EventE> {
  FetchEventDetailsRepo._();

  static final instance = FetchEventDetailsRepo._();

  @override
  ServicesInterface get serviceInstance => FetchEventDetailsService.instance;

  @override
  EventE Function(dynamic data) get onParse => (data) {
        return EventModel.fromJson(data);
      };
}
