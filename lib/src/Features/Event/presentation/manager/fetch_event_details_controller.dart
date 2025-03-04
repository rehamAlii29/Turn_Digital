import 'package:flutter_base/src/Core/NetworkStructure/Resources/DataState/data_state.dart';
import 'package:flutter_base/src/Features/Event/core/fetch_event_details_params.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';
import 'package:flutter_base/src/Features/Event/domain/use_cases/fetch_event_details_use_case.dart';
import 'package:flutter_base/src/Super/Controllers/Resources/get/get_controller_interface.dart';

import '../../../../Core/Utils/general_utils.dart';

class FetchEventDetailsController extends GetControllerInterface<EventE> {
  fetchEventDetails(int id) async {
    notify(const DataLoading());
    final FetchEventDetailsUseCase useCase = FetchEventDetailsUseCase();
    state = await useCase.call(params: FetchEventDetailsParams(id: id))!;
    notify(state);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
