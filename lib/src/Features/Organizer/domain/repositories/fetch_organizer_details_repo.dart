import 'package:flutter_base/src/Features/Event/data/models/event_model.dart';
import 'package:flutter_base/src/Features/Organizer/data/models/organizer_model.dart';
import 'package:flutter_base/src/Features/Organizer/domain/entities/organizer_e.dart';

import '../../../../Core/NetworkStructure/DataSource/service_interface.dart';
import '../../../../Core/NetworkStructure/Repository/repo_interface.dart';
import '../../data/data_sources/fetch_organizer_details_service.dart';

class FetchOrganizerDetailsRepo extends RepoInterface<OrganizerE> {
  FetchOrganizerDetailsRepo._();

  static final instance = FetchOrganizerDetailsRepo._();

  @override
  ServicesInterface get serviceInstance =>
      FetchOrganizerDetailsService.instance;

  @override
  OrganizerE Function(dynamic data) get onParse =>
          (data) {
        return OrganizerModel.fromJson(data);
      };
}
