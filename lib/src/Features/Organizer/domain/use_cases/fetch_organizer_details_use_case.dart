import 'package:flutter_base/src/Features/AllEvents/core/fetch_all_events_params.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';
import 'package:flutter_base/src/Features/Organizer/core/fetch_organizer_details.dart';
import 'package:flutter_base/src/Features/Organizer/domain/entities/organizer_e.dart';

import '../../../../Core/NetworkStructure/Resources/DataState/data_state.dart';
import '../../../../Super/UseCase/user_case.dart';
import '../repositories/fetch_organizer_details_repo.dart';

class FetchOrganizerDetailsUseCase
    extends UseCase<OrganizerE, FetchOrganizerDetailsParams> {
  @override
  Future<DataState<OrganizerE>>? call({FetchOrganizerDetailsParams? params}) {
    return FetchOrganizerDetailsRepo.instance.call(params: params);
  }
}
