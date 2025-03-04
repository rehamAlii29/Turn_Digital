import 'package:flutter_base/src/Core/NetworkStructure/Resources/DataState/data_state.dart';
import 'package:flutter_base/src/Features/Organizer/domain/entities/organizer_e.dart';
import 'package:flutter_base/src/Features/Organizer/domain/use_cases/fetch_organizer_details_use_case.dart';
import 'package:flutter_base/src/Super/Controllers/Resources/get/get_controller_interface.dart';

import '../../core/fetch_organizer_details.dart';

class FetchOrganizerDetailsController
    extends GetControllerInterface<OrganizerE> {
  fetchOrganizerDetails(String organizerId) async {
    notify(const DataLoading());
    final FetchOrganizerDetailsUseCase useCase = FetchOrganizerDetailsUseCase();
    state = await useCase.call(
        params: FetchOrganizerDetailsParams(organizerId: organizerId))!;
    notify(state);
  }
}
